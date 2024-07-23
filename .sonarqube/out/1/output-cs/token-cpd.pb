±

eC:\Projetos FRW\openAiAssistant-frw\Dapper.WebApi\Dapper.Application\Interfaces\IGenericRepository.cs
	namespace 	
Dapper
 
. 
Application 
. 

Interfaces '
{ 
public 

	interface 
IGenericRepository '
<' (
T( )
>) *
where+ 0
T1 2
:3 4
class5 :
{		 
Task

 
<

 
T

 
>

 
GetByIdAsync

 
(

 
int

  
id

! #
)

# $
;

$ %
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAllAsync *
(* +
)+ ,
;, -
Task 
< 
int 
> 
AddAsync 
( 
T 
entity #
)# $
;$ %
Task 
< 
int 
> 
UpdateAsync 
( 
T 
entity  &
)& '
;' (
Task 
< 
int 
> 
DeleteAsync 
( 
int !
id" $
)$ %
;% &
} 
} Ä
eC:\Projetos FRW\openAiAssistant-frw\Dapper.WebApi\Dapper.Application\Interfaces\IProductRepository.cs
	namespace 	
Dapper
 
. 
Application 
. 

Interfaces '
{ 
public 

	interface 
IProductRepository '
:( )
IGenericRepository* <
<< =
Product= D
>D E
{		 
}

 
} È
^C:\Projetos FRW\openAiAssistant-frw\Dapper.WebApi\Dapper.Application\Interfaces\IUnitOfWork.cs
	namespace 	
Dapper
 
. 
Application 
. 

Interfaces '
{ 
public 

	interface 
IUnitOfWork  
{ 
IProductRepository		 
Products		 #
{		$ %
get		& )
;		) *
}		+ ,
}

 
} 