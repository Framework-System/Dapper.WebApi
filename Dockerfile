# Usar a imagem do SDK do .NET Core 3.1 para construir a aplicação
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copiar csproj e restaurar as dependências
COPY Dapper.WebApi/*.csproj ./Dapper.WebApi/
COPY Dapper.Core/*.csproj ./Dapper.Core/
COPY Dapper.Infrastructure/*.csproj ./Dapper.Infrastructure/
RUN dotnet restore Dapper.WebApi/Dapper.WebApi.csproj

# Copiar o resto dos arquivos e construir a aplicação
COPY . ./
RUN dotnet publish Dapper.WebApi/Dapper.WebApi.csproj -c Release -o out

# Gerar a imagem de runtime
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Dapper.WebApi.dll"]