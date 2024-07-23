¦3
gC:\Projetos FRW\openAiAssistant-frw\Dapper.WebApi\Dapper.Infrastructure\Repository\ProductRepository.cs
	namespace 	
Dapper
 
. 
Infrastructure 
.  

Repository  *
{ 
public 

class 
ProductRepository "
:# $
IProductRepository% 7
{ 
private 
readonly 
IConfiguration '
configuration( 5
;5 6
public 
ProductRepository  
(  !
IConfiguration! /
configuration0 =
)= >
{ 	
this 
. 
configuration 
=  
configuration! .
;. /
} 	
public 
async 
Task 
< 
int 
> 
AddAsync '
(' (
Product( /
entity0 6
)6 7
{ 	
entity 
. 
	CreatedOn 
= 
DateTime '
.' (
Now( +
;+ ,
var 
sql 
= 
$str	 
;
 Ž
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
configuration6 C
.C D
GetConnectionStringD W
(W X
$strX k
)k l
)l m
)m n
{ 

connection 
. 
Open 
(  
)  !
;! "
var 
result 
= 
await "

connection# -
.- .
ExecuteAsync. :
(: ;
sql; >
,> ?
entity@ F
)F G
;G H
return 
result 
; 
} 
} 	
public   
async   
Task   
<   
int   
>   
DeleteAsync   *
(  * +
int  + .
id  / 1
)  1 2
{!! 	
var"" 
sql"" 
="" 
$str"" ;
;""; <
using## 
(## 
var## 

connection## !
=##" #
new##$ '
SqlConnection##( 5
(##5 6
configuration##6 C
.##C D
GetConnectionString##D W
(##W X
$str##X k
)##k l
)##l m
)##m n
{$$ 

connection%% 
.%% 
Open%% 
(%%  
)%%  !
;%%! "
var&& 
result&& 
=&& 
await&& "

connection&&# -
.&&- .
ExecuteAsync&&. :
(&&: ;
sql&&; >
,&&> ?
new&&@ C
{&&D E
Identificador&&F S
=&&T U
id&&V X
}&&Y Z
)&&Z [
;&&[ \
return'' 
result'' 
;'' 
}(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
IReadOnlyList++ '
<++' (
Product++( /
>++/ 0
>++0 1
GetAllAsync++2 =
(++= >
)++> ?
{,, 	
var-- 
sql-- 
=-- 
$str-- -
;--- .
using.. 
(.. 
var.. 

connection.. !
=.." #
new..$ '
SqlConnection..( 5
(..5 6
configuration..6 C
...C D
GetConnectionString..D W
(..W X
$str..X k
)..k l
)..l m
)..m n
{// 

connection00 
.00 
Open00 
(00  
)00  !
;00! "
var11 
result11 
=11 
await11 "

connection11# -
.11- .

QueryAsync11. 8
<118 9
Product119 @
>11@ A
(11A B
sql11B E
)11E F
;11F G
return22 
result22 
.22 
ToList22 $
(22$ %
)22% &
;22& '
}33 
}44 	
public66 
async66 
Task66 
<66 
Product66 !
>66! "
GetByIdAsync66# /
(66/ 0
int660 3
id664 6
)666 7
{77 	
var88 
sql88 
=88 
$str88 =
;88= >
using99 
(99 
var99 

connection99 !
=99" #
new99$ '
SqlConnection99( 5
(995 6
configuration996 C
.99C D
GetConnectionString99D W
(99W X
$str99X k
)99k l
)99l m
)99m n
{:: 

connection;; 
.;; 
Open;; 
(;;  
);;  !
;;;! "
var<< 
result<< 
=<< 
await<< "

connection<<# -
.<<- .%
QuerySingleOrDefaultAsync<<. G
<<<G H
Product<<H O
><<O P
(<<P Q
sql<<Q T
,<<T U
new<<V Y
{<<Z [
Id<<\ ^
=<<_ `
id<<a c
}<<d e
)<<e f
;<<f g
return== 
result== 
;== 
}>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
intAA 
>AA 
UpdateAsyncAA *
(AA* +
ProductAA+ 2
entityAA3 9
)AA9 :
{BB 	
entityCC 
.CC 

ModifiedOnCC 
=CC 
DateTimeCC  (
.CC( )
NowCC) ,
;CC, -
varDD 
sqlDD 
=DD 
$str	DD  
;
DD  ¡
usingEE 
(EE 
varEE 

connectionEE !
=EE" #
newEE$ '
SqlConnectionEE( 5
(EE5 6
configurationEE6 C
.EEC D
GetConnectionStringEED W
(EEW X
$strEEX k
)EEk l
)EEl m
)EEm n
{FF 

connectionGG 
.GG 
OpenGG 
(GG  
)GG  !
;GG! "
varHH 
resultHH 
=HH 
awaitHH "

connectionHH# -
.HH- .
ExecuteAsyncHH. :
(HH: ;
sqlHH; >
,HH> ?
entityHH@ F
)HHF G
;HHG H
returnII 
resultII 
;II 
}JJ 
}KK 	
}LL 
}MM þ
`C:\Projetos FRW\openAiAssistant-frw\Dapper.WebApi\Dapper.Infrastructure\Repository\UnitOfWork.cs
	namespace 	
Dapper
 
. 
Infrastructure 
.  

Repository  *
{ 
public 

class 

UnitOfWork 
: 
IUnitOfWork )
{		 
public 

UnitOfWork 
( 
IProductRepository ,
productRepository- >
)> ?
{ 	
Products 
= 
productRepository (
;( )
} 	
public 
IProductRepository !
Products" *
{+ ,
get- 0
;0 1
}2 3
} 
} Ç
^C:\Projetos FRW\openAiAssistant-frw\Dapper.WebApi\Dapper.Infrastructure\ServiceRegistration.cs
	namespace 	
Dapper
 
. 
Infrastructure 
{		 
public

 

static

 
class

 
ServiceRegistration

 +
{ 
public 
static 
void 
AddInfrastructure ,
(, -
this- 1
IServiceCollection2 D
servicesE M
)M N
{ 	
services 
. 
AddTransient !
<! "
IProductRepository" 4
,4 5
ProductRepository6 G
>G H
(H I
)I J
;J K
services 
. 
AddTransient !
<! "
IUnitOfWork" -
,- .

UnitOfWork/ 9
>9 :
(: ;
); <
;< =
} 	
} 
} 