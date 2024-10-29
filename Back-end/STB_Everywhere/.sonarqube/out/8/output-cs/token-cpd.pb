Ó
∫C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\obj\Debug\net8.0\AccountCreation.API.MvcApplicationPartsAssemblyInfo.cs
[ 
assembly 	
:	 

	Microsoft 
. 

AspNetCore 
.  
Mvc  #
.# $
ApplicationParts$ 4
.4 5$
ApplicationPartAttribute5 M
(M N
$strN q
)q r
]r sö
ßC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\obj\Debug\net8.0\AccountCreation.API.AssemblyInfo.cs
[ 
assembly 	
:	 

	Microsoft 
. 

Extensions 
.  
Configuration  -
.- .
UserSecrets. 9
.9 :"
UserSecretsIdAttribute: P
(P Q
$strQ w
)w x
]x y
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyCompanyAttribute 5
(5 6
$str6 K
)K L
]L M
[ 
assembly 	
:	 

System 
. 

Reflection 
. *
AssemblyConfigurationAttribute ;
(; <
$str< C
)C D
]D E
[ 
assembly 	
:	 

System 
. 

Reflection 
. (
AssemblyFileVersionAttribute 9
(9 :
$str: C
)C D
]D E
[ 
assembly 	
:	 

System 
. 

Reflection 
. 1
%AssemblyInformationalVersionAttribute B
(B C
$strC s
)s t
]t u
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyProductAttribute 5
(5 6
$str6 K
)K L
]L M
[ 
assembly 	
:	 

System 
. 

Reflection 
. "
AssemblyTitleAttribute 3
(3 4
$str4 I
)I J
]J K
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyVersionAttribute 5
(5 6
$str6 ?
)? @
]@ Aµ
≤C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
[ 
assembly 	
:	 

global 
:: 
System 
. 
Runtime !
.! "

Versioning" ,
., -$
TargetFrameworkAttribute- E
(E F
$strF `
,` a 
FrameworkDisplayNameb v
=w x
$str	y É
)
É Ñ
]
Ñ Ö¨
©C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\obj\Debug\net8.0\AccountCreation.API.GlobalUsings.g.csŒ"
}C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Program.cs
var

 
builder

 
=

 
WebApplication

 
.

 
CreateBuilder

 *
(

* +
args

+ /
)

/ 0
;

0 1
var 
assembly 
= 
typeof 
( 
Program 
) 
. 
Assembly '
;' (
builder 
. 
Services 
. 

AddMediatR 
( 
config "
=># %
{ 
config 

.
 (
RegisterServicesFromAssembly '
(' (
assembly( 0
)0 1
;1 2
} 
) 
; 
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder 
. 
Services 
. 
	AddScoped 
( 
typeof !
(! "&
IAccountCreationRepository" <
)< =
,= >
typeof? E
(E F%
AccountCreationRepositoryF _
)_ `
)` a
;a b
builder 
. 
Services 
. 
	AddCarter 
( 
) 
; 
builder 
. 
Services 
. 
AddDbContext 
< "
AccountCreationContext 4
>4 5
(5 6
options6 =
=>> @
options 
. 
UseSqlServer +
(+ ,
builder, 3
.3 4
Configuration4 A
.A B
GetConnectionStringB U
(U V
$strV h
)h i
,i j
optionsk r
=>s u
optionsv }
.} ~!
EnableRetryOnFailure	~ í
(
í ì
)
ì î
)
î ï
)
ï ñ
;
ñ ó
builder   
.   
Services   
.   
	AddScoped   
(   
typeof   !
(  ! "
IAsyncRepository  " 2
<  2 3
>  3 4
)  4 5
,  5 6
typeof  7 =
(  = >
RepositoryBase  > L
<  L M
>  M N
)  N O
)  O P
;  P Q
builder!! 
.!! 
Services!! 
.!! 
	AddScoped!! 
<!! &
IAccountCreationRepository!! 5
,!!5 6%
AccountCreationRepository!!7 P
>!!P Q
(!!Q R
)!!R S
;!!S T
builder"" 
."" 
Services"" 
."" 

AddLogging"" 
("" 
)"" 
;"" 
builder$$ 
.$$ 
Services$$ 
.$$ 
AddControllers$$ 
($$  
)$$  !
;$$! "
var&& 
app&& 
=&& 	
builder&&
 
.&& 
Build&& 
(&& 
)&& 
;&& 
app(( 
.(( 
MigrateDatabase(( 
<(( "
AccountCreationContext(( *
>((* +
(((+ ,
(((, -
context((- 4
,((4 5
services((6 >
)((> ?
=>((@ B
{)) 
}++ 
)++ 
;++ 
app-- 
.-- 

UseSwagger-- 
(-- 
)-- 
;-- 
app.. 
... 
UseSwaggerUI.. 
(.. 
).. 
;.. 
app00 
.00 
	MapCarter00 
(00 
)00 
;00 
app33 
.33 
UseHttpsRedirection33 
(33 
)33 
;33 
app44 
.44 
MapControllers44 
(44 
)44 
;44 
app55 
.55 

UseRouting55 
(55 
)55 
;55 
app66 
.66 
UseAuthorization66 
(66 
)66 
;66 
app88 
.88 
Run88 
(88 
)88 	
;88	 
Í	
áC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Models\EntityBase.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Models $
{ 
public 

abstract 
class 

EntityBase $
{ 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
string 
? 
	CreatedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
LastModifiedBy %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
DateTime		 
?		 
LastModifiedDate		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
}

 
} ç
åC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Models\AccountCreation.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Models $
{ 
public 

class !
AccountCreationEntity &
:' (

EntityBase) 3
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Nationality !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
OtherNationality		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
string

 

CivilState

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
ProfessionalStatus (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
ActivityNature $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
FieldOfProfession '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
decimal 
	NetIncome  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
decimal 
OtherIncome "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
PPE 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
PoliticalFunction '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ÁT
†C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Repositories\RepositoryBase.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -
Repositories- 9
{ 
public		 

class		 
RepositoryBase		 
<		  
T		  !
>		! "
:		# $
IAsyncRepository		% 5
<		5 6
T		6 7
>		7 8
where		9 >
T		? @
:		A B

EntityBase		C M
{

 
	protected 
readonly "
AccountCreationContext 1

_dbContext2 <
;< =
public 
RepositoryBase 
( "
AccountCreationContext 4
	dbContext5 >
)> ?
{ 	

_dbContext 
= 
	dbContext "
??# %
throw& +
new, /!
ArgumentNullException0 E
(E F
nameofF L
(L M
	dbContextM V
)V W
)W X
;X Y
} 	
public 
async 
Task 
< 
IReadOnlyList '
<' (
T( )
>) *
>* +
GetAllAsync, 7
(7 8
)8 9
{ 	
return 
await 

_dbContext #
.# $
Set$ '
<' (
T( )
>) *
(* +
)+ ,
., -
ToListAsync- 8
(8 9
)9 :
;: ;
} 	
public 
async 
Task 
< 
IReadOnlyList '
<' (
T( )
>) *
>* +
GetAsync, 4
(4 5

Expression5 ?
<? @
Func@ D
<D E
TE F
,F G
boolH L
>L M
>M N
	predicateO X
)X Y
{ 	
return 
await 

_dbContext #
.# $
Set$ '
<' (
T( )
>) *
(* +
)+ ,
., -
Where- 2
(2 3
	predicate3 <
)< =
.= >
ToListAsync> I
(I J
)J K
;K L
} 	
public 
async 
Task 
< 
IReadOnlyList '
<' (
T( )
>) *
>* +
GetAsync, 4
(4 5

Expression5 ?
<? @
Func@ D
<D E
TE F
,F G
boolH L
>L M
>M N
	predicateO X
=Y Z
null[ _
,_ `
Funca e
<e f

IQueryablef p
<p q
Tq r
>r s
,s t
IOrderedQueryable	u Ü
<
Ü á
T
á à
>
à â
>
â ä
orderBy
ã í
=
ì î
null
ï ô
,
ô ö
string
õ °
includeString
¢ Ø
=
∞ ±
null
≤ ∂
,
∂ ∑
bool
∏ º
disableTracking
Ω Ã
=
Õ Œ
true
œ ”
)
” ‘
{ 	

IQueryable   
<   
T   
>   
query   
=    !

_dbContext  " ,
.  , -
Set  - 0
<  0 1
T  1 2
>  2 3
(  3 4
)  4 5
;  5 6
if!! 
(!! 
disableTracking!! 
)!!  
query!!! &
=!!' (
query!!) .
.!!. /
AsNoTracking!!/ ;
(!!; <
)!!< =
;!!= >
if## 
(## 
!## 
string## 
.## 
IsNullOrWhiteSpace## *
(##* +
includeString##+ 8
)##8 9
)##9 :
query##; @
=##A B
query##C H
.##H I
Include##I P
(##P Q
includeString##Q ^
)##^ _
;##_ `
if%% 
(%% 
	predicate%% 
!=%% 
null%% !
)%%! "
query%%# (
=%%) *
query%%+ 0
.%%0 1
Where%%1 6
(%%6 7
	predicate%%7 @
)%%@ A
;%%A B
if'' 
('' 
orderBy'' 
!='' 
null'' 
)''  
return(( 
await(( 
orderBy(( $
((($ %
query((% *
)((* +
.((+ ,
ToListAsync((, 7
(((7 8
)((8 9
;((9 :
return)) 
await)) 
query)) 
.)) 
ToListAsync)) *
())* +
)))+ ,
;)), -
}** 	
public,, 
async,, 
Task,, 
<,, 
IReadOnlyList,, '
<,,' (
T,,( )
>,,) *
>,,* +
GetAsync,,, 4
(,,4 5

Expression,,5 ?
<,,? @
Func,,@ D
<,,D E
T,,E F
,,,F G
bool,,H L
>,,L M
>,,M N
	predicate,,O X
=,,Y Z
null,,[ _
,,,_ `
Func,,a e
<,,e f

IQueryable,,f p
<,,p q
T,,q r
>,,r s
,,,s t
IOrderedQueryable	,,u Ü
<
,,Ü á
T
,,á à
>
,,à â
>
,,â ä
orderBy
,,ã í
=
,,ì î
null
,,ï ô
,
,,ô ö
List
,,õ ü
<
,,ü †

Expression
,,† ™
<
,,™ ´
Func
,,´ Ø
<
,,Ø ∞
T
,,∞ ±
,
,,± ≤
object
,,≥ π
>
,,π ∫
>
,,∫ ª
>
,,ª º
includes
,,Ω ≈
=
,,∆ «
null
,,» Ã
,
,,Ã Õ
bool
,,Œ “
disableTracking
,,” ‚
=
,,„ ‰
true
,,Â È
)
,,È Í
{-- 	

IQueryable.. 
<.. 
T.. 
>.. 
query.. 
=..  !

_dbContext.." ,
..., -
Set..- 0
<..0 1
T..1 2
>..2 3
(..3 4
)..4 5
;..5 6
if// 
(// 
disableTracking// 
)//  
query//! &
=//' (
query//) .
.//. /
AsNoTracking/// ;
(//; <
)//< =
;//= >
if11 
(11 
includes11 
!=11 
null11  
)11  !
query11" '
=11( )
includes11* 2
.112 3
	Aggregate113 <
(11< =
query11= B
,11B C
(11D E
current11E L
,11L M
include11N U
)11U V
=>11W Y
current11Z a
.11a b
Include11b i
(11i j
include11j q
)11q r
)11r s
;11s t
if33 
(33 
	predicate33 
!=33 
null33 !
)33! "
query33# (
=33) *
query33+ 0
.330 1
Where331 6
(336 7
	predicate337 @
)33@ A
;33A B
if55 
(55 
orderBy55 
!=55 
null55 
)55  
return66 
await66 
orderBy66 $
(66$ %
query66% *
)66* +
.66+ ,
ToListAsync66, 7
(667 8
)668 9
;669 :
return77 
await77 
query77 
.77 
ToListAsync77 *
(77* +
)77+ ,
;77, -
}88 	
public:: 
virtual:: 
async:: 
Task:: !
<::! "
T::" #
>::# $
GetByIdAsync::% 1
(::1 2
Guid::2 6
id::7 9
)::9 :
{;; 	
return<< 
await<< 

_dbContext<< #
.<<# $
Set<<$ '
<<<' (
T<<( )
><<) *
(<<* +
)<<+ ,
.<<, -
	FindAsync<<- 6
(<<6 7
id<<7 9
)<<9 :
;<<: ;
}== 	
public?? 
async?? 
Task?? 
<?? 
T?? 
>?? 
AddAsync?? %
(??% &
T??& '
entity??( .
)??. /
{@@ 	
tryAA 
{BB 

_dbContextDD 
.DD 
SetDD 
<DD 
TDD 
>DD 
(DD 
)DD 
.DD  
AddDD  #
(DD# $
entityDD$ *
)DD* +
;DD+ ,
awaitEE 

_dbContextEE 
.EE 
SaveChangesAsyncEE -
(EE- .
)EE. /
;EE/ 0
returnFF 
entityFF 
;FF 
}II 
catchJJ 
(JJ 
DbUpdateExceptionJJ $
exJJ% '
)JJ' (
{JJ) *
ConsoleLL 
.LL 
	WriteLineLL !
(LL! "
$"LL" $
$strLL$ 2
{LL2 3
exLL3 5
.LL5 6
MessageLL6 =
}LL= >
"LL> ?
)LL? @
;LL@ A
ifOO 
(OO 
exOO 
.OO 
InnerExceptionOO %
!=OO& (
nullOO) -
)OO- .
{PP 
ConsoleRR 
.RR 
	WriteLineRR %
(RR% &
$"RR& (
$strRR( 6
{RR6 7
exRR7 9
.RR9 :
InnerExceptionRR: H
.RRH I
MessageRRI P
}RRP Q
"RRQ R
)RRR S
;RRS T
}TT 
throwUU 
exUU 
;UU 
}VV 
}ZZ 	
public\\ 
async\\ 
Task\\ 
UpdateAsync\\ %
(\\% &
T\\& '
entity\\( .
)\\. /
{]] 	

_dbContext^^ 
.^^ 
Entry^^ 
(^^ 
entity^^ #
)^^# $
.^^$ %
State^^% *
=^^+ ,
EntityState^^- 8
.^^8 9
Modified^^9 A
;^^A B
await__ 

_dbContext__ 
.__ 
SaveChangesAsync__ -
(__- .
)__. /
;__/ 0
}`` 	
publicbb 
asyncbb 
Taskbb 
DeleteAsyncbb %
(bb% &
Tbb& '
entitybb( .
)bb. /
{cc 	

_dbContextdd 
.dd 
Setdd 
<dd 
Tdd 
>dd 
(dd 
)dd 
.dd  
Removedd  &
(dd& '
entitydd' -
)dd- .
;dd. /
awaitee 

_dbContextee 
.ee 
SaveChangesAsyncee -
(ee- .
)ee. /
;ee/ 0
}ff 	
}hh 
}ii Ï
¢C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Repositories\IAsyncRepository.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -
Repositories- 9
{ 
public 

	interface 
IAsyncRepository %
<% &
T& '
>' (
where) .
T/ 0
:1 2

EntityBase3 =
{ 
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAllAsync *
(* +
)+ ,
;, -
Task		 
<		 
IReadOnlyList		 
<		 
T		 
>		 
>		 
GetAsync		 '
(		' (

Expression		( 2
<		2 3
Func		3 7
<		7 8
T		8 9
,		9 :
bool		; ?
>		? @
>		@ A
	predicate		B K
)		K L
;		L M
Task

 
<

 
IReadOnlyList

 
<

 
T

 
>

 
>

 
GetAsync

 '
(

' (

Expression

( 2
<

2 3
Func

3 7
<

7 8
T

8 9
,

9 :
bool

; ?
>

? @
>

@ A
?

A B
	predicate

C L
=

M N
null

O S
,

S T
Func( ,
<, -

IQueryable- 7
<7 8
T8 9
>9 :
,: ;
IOrderedQueryable< M
<M N
TN O
>O P
>P Q
?Q R
orderByS Z
=[ \
null] a
,a b
string( .
?. /
includeString0 =
=> ?
null@ D
,D E
bool( ,
disableTracking- <
== >
true? C
)C D
;D E
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAsync '
(' (

Expression( 2
<2 3
Func3 7
<7 8
T8 9
,9 :
bool; ?
>? @
>@ A
?A B
	predicateC L
=M N
nullO S
,S T
Func' +
<+ ,

IQueryable, 6
<6 7
T7 8
>8 9
,9 :
IOrderedQueryable; L
<L M
TM N
>N O
>O P
?P Q
orderByR Y
=Z [
null\ `
,` a
List' +
<+ ,

Expression, 6
<6 7
Func7 ;
<; <
T< =
,= >
object? E
>E F
>F G
>G H
?H I
includesJ R
=S T
nullU Y
,Y Z
bool' +
disableTracking, ;
=< =
true> B
)B C
;C D
Task 
< 
T 
> 
GetByIdAsync 
( 
Guid !
id" $
)$ %
;% &
Task 
< 
T 
> 
AddAsync 
( 
T 
entity !
)! "
;" #
Task 
UpdateAsync 
( 
T 
entity !
)! "
;" #
Task 
DeleteAsync 
( 
T 
entity !
)! "
;" #
} 
} ñ
¨C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Repositories\IAccountCreationRepository.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -
Repositories- 9
{ 
public 

	interface &
IAccountCreationRepository /
:0 1
IAsyncRepository2 B
<B C!
AccountCreationEntityC X
>X Y
{ 
Task 
< !
AccountCreationEntity "
>" #
GetByClientIdAsync$ 6
(6 7
Guid7 ;
clientId< D
)D E
;E F
}		 
}

 ƒ
´C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Repositories\AccountCreationRepository.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -
Repositories- 9
{ 
public 

class %
AccountCreationRepository *
:+ ,
RepositoryBase- ;
<; <!
AccountCreationEntity< Q
>Q R
,R S&
IAccountCreationRepositoryT n
{ 
public %
AccountCreationRepository (
(( )"
AccountCreationContext) ?
	dbContext@ I
)I J
:K L
baseM Q
(Q R
	dbContextR [
)[ \
{ 	
} 	
public 
async 
Task 
< !
AccountCreationEntity /
>/ 0
GetByClientIdAsync1 C
(C D
GuidD H
clientIdI Q
)Q R
{ 	
return 
await 

_dbContext #
.# $
AccountCreation$ 3
.3 4
FirstOrDefaultAsync4 G
(G H
aH I
=>J L
aM N
.N O
ClientIdO W
==X Z
clientId[ c
)c d
;d e
} 	
} 
} ˆ
ßC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Persistance\AccountCreationContext.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -
Persistance- 8
{ 
public 

class "
AccountCreationContext '
:( )
	DbContext* 3
{ 
public

 "
AccountCreationContext

 %
(

% &
DbContextOptions

& 6
<

6 7"
AccountCreationContext

7 M
>

M N
options

O V
)

V W
:

X Y
base

Z ^
(

^ _
options

_ f
)

f g
{ 	
} 	
public 
DbSet 
< !
AccountCreationEntity *
>* +
AccountCreation, ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< 
Client 
> 
Clients $
{% &
get' *
;* +
set, /
;/ 0
}1 2
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  !
AccountCreationEntity  5
>5 6
(6 7
)7 8
. 
HasOne 
< 
Client 
> 
(  
)  !
. 
WithOne 
( 
) 
. 
HasForeignKey 
< !
AccountCreationEntity 4
>4 5
(5 6
o6 7
=>8 :
o; <
.< =
ClientId= E
)E F
;F G
modelBuilder 
. 
Entity 
<  
Client  &
>& '
(' (
)( )
. 
OwnsOne 
( 
c 
=> 
c 
. 
Address #
)# $
;$ %
ConfigureEntities 
( 
modelBuilder *
)* +
;+ ,
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
} 	
private!! 
void!! 
ConfigureEntities!! &
(!!& '
ModelBuilder!!' 3
modelBuilder!!4 @
)!!@ A
{"" 	
modelBuilder$$ 
.$$ 
Entity$$ 
<$$  !
AccountCreationEntity$$  5
>$$5 6
($$6 7
)$$7 8
.$$8 9
HasKey$$9 ?
($$? @
c$$@ A
=>$$B D
c$$E F
.$$F G
Id$$G I
)$$I J
;$$J K
}'' 	
}(( 
})) ˇw
≥C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\AccountCreationContextModelSnapshot.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
[ 
	DbContext 
( 
typeof 
( "
AccountCreationContext ,
), -
)- .
]. /
partial 
class /
#AccountCreationContextModelSnapshot 5
:6 7
ModelSnapshot8 E
{ 
	protected 
override 
void 

BuildModel  *
(* +
ModelBuilder+ 7
modelBuilder8 D
)D E
{ 	
modelBuilder 
. 
HasAnnotation 
( 
$str /
,/ 0
$str1 8
)8 9
. 
HasAnnotation 
( 
$str ?
,? @
$numA D
)D E
;E F+
SqlServerModelBuilderExtensions +
.+ ,
UseIdentityColumns, >
(> ?
modelBuilder? K
)K L
;L M
modelBuilder 
. 
Entity 
(  
$str  R
,R S
bT U
=>V X
{ 
b 
. 
Property 
< 
Guid #
># $
($ %
$str% )
)) *
. 
ValueGeneratedOnAdd ,
(, -
)- .
. 
HasColumnType &
(& '
$str' 9
)9 :
;: ;
b 
. 
Property 
< 
string %
>% &
(& '
$str' 7
)7 8
.   

IsRequired   #
(  # $
)  $ %
.!! 
HasColumnType!! &
(!!& '
$str!!' 6
)!!6 7
;!!7 8
b## 
.## 
Property## 
<## 
string## %
>##% &
(##& '
$str##' 3
)##3 4
.$$ 

IsRequired$$ #
($$# $
)$$$ %
.%% 
HasColumnType%% &
(%%& '
$str%%' 6
)%%6 7
;%%7 8
b'' 
.'' 
Property'' 
<'' 
Guid'' #
>''# $
(''$ %
$str''% /
)''/ 0
.(( 
HasColumnType(( &
(((& '
$str((' 9
)((9 :
;((: ;
b** 
.** 
Property** 
<** 
string** %
>**% &
(**& '
$str**' 2
)**2 3
.++ 
HasColumnType++ &
(++& '
$str++' 6
)++6 7
;++7 8
b-- 
.-- 
Property-- 
<-- 
DateTime-- '
>--' (
(--( )
$str--) 6
)--6 7
... 
HasColumnType.. &
(..& '
$str..' 2
)..2 3
;..3 4
b00 
.00 
Property00 
<00 
string00 %
>00% &
(00& '
$str00' :
)00: ;
.11 

IsRequired11 #
(11# $
)11$ %
.22 
HasColumnType22 &
(22& '
$str22' 6
)226 7
;227 8
b44 
.44 
Property44 
<44 
string44 %
>44% &
(44& '
$str44' 7
)447 8
.55 
HasColumnType55 &
(55& '
$str55' 6
)556 7
;557 8
b77 
.77 
Property77 
<77 
DateTime77 '
?77' (
>77( )
(77) *
$str77* <
)77< =
.88 
HasColumnType88 &
(88& '
$str88' 2
)882 3
;883 4
b:: 
.:: 
Property:: 
<:: 
string:: %
>::% &
(::& '
$str::' 4
)::4 5
.;; 

IsRequired;; #
(;;# $
);;$ %
.<< 
HasColumnType<< &
(<<& '
$str<<' 6
)<<6 7
;<<7 8
b>> 
.>> 
Property>> 
<>> 
decimal>> &
>>>& '
(>>' (
$str>>( 3
)>>3 4
.?? 
HasColumnType?? &
(??& '
$str??' 6
)??6 7
;??7 8
bAA 
.AA 
PropertyAA 
<AA 
decimalAA &
>AA& '
(AA' (
$strAA( 5
)AA5 6
.BB 
HasColumnTypeBB &
(BB& '
$strBB' 6
)BB6 7
;BB7 8
bDD 
.DD 
PropertyDD 
<DD 
stringDD %
>DD% &
(DD& '
$strDD' 9
)DD9 :
.EE 

IsRequiredEE #
(EE# $
)EE$ %
.FF 
HasColumnTypeFF &
(FF& '
$strFF' 6
)FF6 7
;FF7 8
bHH 
.HH 
PropertyHH 
<HH 
boolHH #
>HH# $
(HH$ %
$strHH% *
)HH* +
.II 
HasColumnTypeII &
(II& '
$strII' ,
)II, -
;II- .
bKK 
.KK 
PropertyKK 
<KK 
stringKK %
>KK% &
(KK& '
$strKK' :
)KK: ;
.LL 

IsRequiredLL #
(LL# $
)LL$ %
.MM 
HasColumnTypeMM &
(MM& '
$strMM' 6
)MM6 7
;MM7 8
bOO 
.OO 
PropertyOO 
<OO 
stringOO %
>OO% &
(OO& '
$strOO' ;
)OO; <
.PP 

IsRequiredPP #
(PP# $
)PP$ %
.QQ 
HasColumnTypeQQ &
(QQ& '
$strQQ' 6
)QQ6 7
;QQ7 8
bSS 
.SS 
HasKeySS 
(SS 
$strSS !
)SS! "
;SS" #
bUU 
.UU 
HasIndexUU 
(UU 
$strUU )
)UU) *
.VV 
IsUniqueVV !
(VV! "
)VV" #
;VV# $
bXX 
.XX 
ToTableXX 
(XX 
$strXX /
)XX/ 0
;XX0 1
}YY 
)YY 
;YY 
modelBuilder[[ 
.[[ 
Entity[[ 
([[  
$str[[  E
,[[E F
b[[G H
=>[[I K
{\\ 
b]] 
.]] 
Property]] 
<]] 
Guid]] #
>]]# $
(]]$ %
$str]]% )
)]]) *
.^^ 
ValueGeneratedOnAdd^^ ,
(^^, -
)^^- .
.__ 
HasColumnType__ &
(__& '
$str__' 9
)__9 :
;__: ;
baa 
.aa 
Propertyaa 
<aa 
stringaa %
>aa% &
(aa& '
$straa' 1
)aa1 2
.bb 

IsRequiredbb #
(bb# $
)bb$ %
.cc 
HasColumnTypecc &
(cc& '
$strcc' 6
)cc6 7
;cc7 8
bee 
.ee 
Propertyee 
<ee 
stringee %
>ee% &
(ee& '
$stree' 2
)ee2 3
.ff 
HasColumnTypeff &
(ff& '
$strff' 6
)ff6 7
;ff7 8
bhh 
.hh 
Propertyhh 
<hh 
DateTimehh '
>hh' (
(hh( )
$strhh) 6
)hh6 7
.ii 
HasColumnTypeii &
(ii& '
$strii' 2
)ii2 3
;ii3 4
bkk 
.kk 
Propertykk 
<kk 
DateTimekk '
>kk' (
(kk( )
$strkk) 6
)kk6 7
.ll 
HasColumnTypell &
(ll& '
$strll' 2
)ll2 3
;ll3 4
bnn 
.nn 
Propertynn 
<nn 
stringnn %
>nn% &
(nn& '
$strnn' .
)nn. /
.oo 

IsRequiredoo #
(oo# $
)oo$ %
.pp 
HasColumnTypepp &
(pp& '
$strpp' 6
)pp6 7
;pp7 8
brr 
.rr 
Propertyrr 
<rr 
stringrr %
>rr% &
(rr& '
$strrr' 2
)rr2 3
.ss 

IsRequiredss #
(ss# $
)ss$ %
.tt 
HasColumnTypett &
(tt& '
$strtt' 6
)tt6 7
;tt7 8
bvv 
.vv 
Propertyvv 
<vv 
boolvv #
>vv# $
(vv$ %
$strvv% 3
)vv3 4
.ww 
HasColumnTypeww &
(ww& '
$strww' ,
)ww, -
;ww- .
byy 
.yy 
Propertyyy 
<yy 
boolyy #
>yy# $
(yy$ %
$stryy% 4
)yy4 5
.zz 
HasColumnTypezz &
(zz& '
$strzz' ,
)zz, -
;zz- .
b|| 
.|| 
Property|| 
<|| 
string|| %
>||% &
(||& '
$str||' 7
)||7 8
.}} 
HasColumnType}} &
(}}& '
$str}}' 6
)}}6 7
;}}7 8
b 
. 
Property 
< 
DateTime '
?' (
>( )
() *
$str* <
)< =
.
ÄÄ 
HasColumnType
ÄÄ &
(
ÄÄ& '
$str
ÄÄ' 2
)
ÄÄ2 3
;
ÄÄ3 4
b
ÇÇ 
.
ÇÇ 
Property
ÇÇ 
<
ÇÇ 
string
ÇÇ %
>
ÇÇ% &
(
ÇÇ& '
$str
ÇÇ' 1
)
ÇÇ1 2
.
ÉÉ 

IsRequired
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
.
ÑÑ 
HasColumnType
ÑÑ &
(
ÑÑ& '
$str
ÑÑ' 6
)
ÑÑ6 7
;
ÑÑ7 8
b
ÜÜ 
.
ÜÜ 
Property
ÜÜ 
<
ÜÜ 
string
ÜÜ %
>
ÜÜ% &
(
ÜÜ& '
$str
ÜÜ' 4
)
ÜÜ4 5
.
áá 

IsRequired
áá #
(
áá# $
)
áá$ %
.
àà 
HasColumnType
àà &
(
àà& '
$str
àà' 6
)
àà6 7
;
àà7 8
b
ää 
.
ää 
HasKey
ää 
(
ää 
$str
ää !
)
ää! "
;
ää" #
b
åå 
.
åå 
ToTable
åå 
(
åå 
$str
åå '
)
åå' (
;
åå( )
}
çç 
)
çç 
;
çç 
modelBuilder
èè 
.
èè 
Entity
èè 
(
èè  
$str
èè  R
,
èèR S
b
èèT U
=>
èèV X
{
êê 
b
ëë 
.
ëë 
HasOne
ëë 
(
ëë 
$str
ëë B
,
ëëB C
null
ëëD H
)
ëëH I
.
íí 
WithOne
íí  
(
íí  !
)
íí! "
.
ìì 
HasForeignKey
ìì &
(
ìì& '
$str
ìì' Y
,
ììY Z
$str
ìì[ e
)
ììe f
.
îî 
OnDelete
îî !
(
îî! "
DeleteBehavior
îî" 0
.
îî0 1
Cascade
îî1 8
)
îî8 9
.
ïï 

IsRequired
ïï #
(
ïï# $
)
ïï$ %
;
ïï% &
}
ññ 
)
ññ 
;
ññ 
modelBuilder
òò 
.
òò 
Entity
òò 
(
òò  
$str
òò  E
,
òòE F
b
òòG H
=>
òòI K
{
ôô 
b
öö 
.
öö 
OwnsOne
öö 
(
öö 
$str
öö D
,
ööD E
$str
ööF O
,
ööO P
b1
ööQ S
=>
ööT V
{
õõ 
b1
úú 
.
úú 
Property
úú '
<
úú' (
Guid
úú( ,
>
úú, -
(
úú- .
$str
úú. 8
)
úú8 9
.
ùù  !
HasColumnType
ùù! .
(
ùù. /
$str
ùù/ A
)
ùùA B
;
ùùB C
b1
üü 
.
üü 
Property
üü '
<
üü' (
string
üü( .
>
üü. /
(
üü/ 0
$str
üü0 6
)
üü6 7
.
††  !

IsRequired
††! +
(
††+ ,
)
††, -
.
°°  !
HasColumnType
°°! .
(
°°. /
$str
°°/ >
)
°°> ?
;
°°? @
b1
££ 
.
££ 
Property
££ '
<
££' (
string
££( .
>
££. /
(
££/ 0
$str
££0 9
)
££9 :
.
§§  !

IsRequired
§§! +
(
§§+ ,
)
§§, -
.
••  !
HasColumnType
••! .
(
••. /
$str
••/ >
)
••> ?
;
••? @
b1
ßß 
.
ßß 
Property
ßß '
<
ßß' (
string
ßß( .
>
ßß. /
(
ßß/ 0
$str
ßß0 <
)
ßß< =
.
®®  !

IsRequired
®®! +
(
®®+ ,
)
®®, -
.
©©  !
HasColumnType
©©! .
(
©©. /
$str
©©/ >
)
©©> ?
;
©©? @
b1
´´ 
.
´´ 
Property
´´ '
<
´´' (
string
´´( .
>
´´. /
(
´´/ 0
$str
´´0 8
)
´´8 9
.
¨¨  !

IsRequired
¨¨! +
(
¨¨+ ,
)
¨¨, -
.
≠≠  !
HasColumnType
≠≠! .
(
≠≠. /
$str
≠≠/ >
)
≠≠> ?
;
≠≠? @
b1
ØØ 
.
ØØ 
Property
ØØ '
<
ØØ' (
string
ØØ( .
>
ØØ. /
(
ØØ/ 0
$str
ØØ0 <
)
ØØ< =
.
∞∞  !

IsRequired
∞∞! +
(
∞∞+ ,
)
∞∞, -
.
±±  !
HasColumnType
±±! .
(
±±. /
$str
±±/ >
)
±±> ?
;
±±? @
b1
≥≥ 
.
≥≥ 
Property
≥≥ '
<
≥≥' (
string
≥≥( .
>
≥≥. /
(
≥≥/ 0
$str
≥≥0 8
)
≥≥8 9
.
¥¥  !

IsRequired
¥¥! +
(
¥¥+ ,
)
¥¥, -
.
µµ  !
HasColumnType
µµ! .
(
µµ. /
$str
µµ/ >
)
µµ> ?
;
µµ? @
b1
∑∑ 
.
∑∑ 
HasKey
∑∑ %
(
∑∑% &
$str
∑∑& 0
)
∑∑0 1
;
∑∑1 2
b1
ππ 
.
ππ 
ToTable
ππ &
(
ππ& '
$str
ππ' 0
)
ππ0 1
;
ππ1 2
b1
ªª 
.
ªª 
	WithOwner
ªª (
(
ªª( )
)
ªª) *
.
ºº  !
HasForeignKey
ºº! .
(
ºº. /
$str
ºº/ 9
)
ºº9 :
;
ºº: ;
}
ΩΩ 
)
ΩΩ 
;
ΩΩ 
b
øø 
.
øø 

Navigation
øø  
(
øø  !
$str
øø! *
)
øø* +
.
¿¿ 

IsRequired
¿¿ #
(
¿¿# $
)
¿¿$ %
;
¿¿% &
}
¡¡ 
)
¡¡ 
;
¡¡ 
}
√√ 	
}
ƒƒ 
}≈≈ ÿx
ªC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\20240610144334_AccountClientUpdate.Designer.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
[ 
	DbContext 
( 
typeof 
( "
AccountCreationContext ,
), -
)- .
]. /
[ 
	Migration 
( 
$str 3
)3 4
]4 5
partial 
class 
AccountClientUpdate %
{ 
	protected 
override 
void 
BuildTargetModel  0
(0 1
ModelBuilder1 =
modelBuilder> J
)J K
{ 	
modelBuilder 
. 
HasAnnotation 
( 
$str /
,/ 0
$str1 8
)8 9
. 
HasAnnotation 
( 
$str ?
,? @
$numA D
)D E
;E F+
SqlServerModelBuilderExtensions +
.+ ,
UseIdentityColumns, >
(> ?
modelBuilder? K
)K L
;L M
modelBuilder 
. 
Entity 
(  
$str  R
,R S
bT U
=>V X
{ 
b 
. 
Property 
< 
Guid #
># $
($ %
$str% )
)) *
. 
ValueGeneratedOnAdd ,
(, -
)- .
.   
HasColumnType   &
(  & '
$str  ' 9
)  9 :
;  : ;
b"" 
."" 
Property"" 
<"" 
string"" %
>""% &
(""& '
$str""' 7
)""7 8
.## 

IsRequired## #
(### $
)##$ %
.$$ 
HasColumnType$$ &
($$& '
$str$$' 6
)$$6 7
;$$7 8
b&& 
.&& 
Property&& 
<&& 
string&& %
>&&% &
(&&& '
$str&&' 3
)&&3 4
.'' 

IsRequired'' #
(''# $
)''$ %
.(( 
HasColumnType(( &
(((& '
$str((' 6
)((6 7
;((7 8
b** 
.** 
Property** 
<** 
Guid** #
>**# $
(**$ %
$str**% /
)**/ 0
.++ 
HasColumnType++ &
(++& '
$str++' 9
)++9 :
;++: ;
b-- 
.-- 
Property-- 
<-- 
string-- %
>--% &
(--& '
$str--' 2
)--2 3
... 
HasColumnType.. &
(..& '
$str..' 6
)..6 7
;..7 8
b00 
.00 
Property00 
<00 
DateTime00 '
>00' (
(00( )
$str00) 6
)006 7
.11 
HasColumnType11 &
(11& '
$str11' 2
)112 3
;113 4
b33 
.33 
Property33 
<33 
string33 %
>33% &
(33& '
$str33' :
)33: ;
.44 

IsRequired44 #
(44# $
)44$ %
.55 
HasColumnType55 &
(55& '
$str55' 6
)556 7
;557 8
b77 
.77 
Property77 
<77 
string77 %
>77% &
(77& '
$str77' 7
)777 8
.88 
HasColumnType88 &
(88& '
$str88' 6
)886 7
;887 8
b:: 
.:: 
Property:: 
<:: 
DateTime:: '
?::' (
>::( )
(::) *
$str::* <
)::< =
.;; 
HasColumnType;; &
(;;& '
$str;;' 2
);;2 3
;;;3 4
b== 
.== 
Property== 
<== 
string== %
>==% &
(==& '
$str==' 4
)==4 5
.>> 

IsRequired>> #
(>># $
)>>$ %
.?? 
HasColumnType?? &
(??& '
$str??' 6
)??6 7
;??7 8
bAA 
.AA 
PropertyAA 
<AA 
decimalAA &
>AA& '
(AA' (
$strAA( 3
)AA3 4
.BB 
HasColumnTypeBB &
(BB& '
$strBB' 6
)BB6 7
;BB7 8
bDD 
.DD 
PropertyDD 
<DD 
decimalDD &
>DD& '
(DD' (
$strDD( 5
)DD5 6
.EE 
HasColumnTypeEE &
(EE& '
$strEE' 6
)EE6 7
;EE7 8
bGG 
.GG 
PropertyGG 
<GG 
stringGG %
>GG% &
(GG& '
$strGG' 9
)GG9 :
.HH 

IsRequiredHH #
(HH# $
)HH$ %
.II 
HasColumnTypeII &
(II& '
$strII' 6
)II6 7
;II7 8
bKK 
.KK 
PropertyKK 
<KK 
boolKK #
>KK# $
(KK$ %
$strKK% *
)KK* +
.LL 
HasColumnTypeLL &
(LL& '
$strLL' ,
)LL, -
;LL- .
bNN 
.NN 
PropertyNN 
<NN 
stringNN %
>NN% &
(NN& '
$strNN' :
)NN: ;
.OO 

IsRequiredOO #
(OO# $
)OO$ %
.PP 
HasColumnTypePP &
(PP& '
$strPP' 6
)PP6 7
;PP7 8
bRR 
.RR 
PropertyRR 
<RR 
stringRR %
>RR% &
(RR& '
$strRR' ;
)RR; <
.SS 

IsRequiredSS #
(SS# $
)SS$ %
.TT 
HasColumnTypeTT &
(TT& '
$strTT' 6
)TT6 7
;TT7 8
bVV 
.VV 
HasKeyVV 
(VV 
$strVV !
)VV! "
;VV" #
bXX 
.XX 
HasIndexXX 
(XX 
$strXX )
)XX) *
.YY 
IsUniqueYY !
(YY! "
)YY" #
;YY# $
b[[ 
.[[ 
ToTable[[ 
([[ 
$str[[ /
)[[/ 0
;[[0 1
}\\ 
)\\ 
;\\ 
modelBuilder^^ 
.^^ 
Entity^^ 
(^^  
$str^^  E
,^^E F
b^^G H
=>^^I K
{__ 
b`` 
.`` 
Property`` 
<`` 
Guid`` #
>``# $
(``$ %
$str``% )
)``) *
.aa 
ValueGeneratedOnAddaa ,
(aa, -
)aa- .
.bb 
HasColumnTypebb &
(bb& '
$strbb' 9
)bb9 :
;bb: ;
bdd 
.dd 
Propertydd 
<dd 
stringdd %
>dd% &
(dd& '
$strdd' 1
)dd1 2
.ee 

IsRequiredee #
(ee# $
)ee$ %
.ff 
HasColumnTypeff &
(ff& '
$strff' 6
)ff6 7
;ff7 8
bhh 
.hh 
Propertyhh 
<hh 
stringhh %
>hh% &
(hh& '
$strhh' 2
)hh2 3
.ii 
HasColumnTypeii &
(ii& '
$strii' 6
)ii6 7
;ii7 8
bkk 
.kk 
Propertykk 
<kk 
DateTimekk '
>kk' (
(kk( )
$strkk) 6
)kk6 7
.ll 
HasColumnTypell &
(ll& '
$strll' 2
)ll2 3
;ll3 4
bnn 
.nn 
Propertynn 
<nn 
DateTimenn '
>nn' (
(nn( )
$strnn) 6
)nn6 7
.oo 
HasColumnTypeoo &
(oo& '
$stroo' 2
)oo2 3
;oo3 4
bqq 
.qq 
Propertyqq 
<qq 
stringqq %
>qq% &
(qq& '
$strqq' .
)qq. /
.rr 

IsRequiredrr #
(rr# $
)rr$ %
.ss 
HasColumnTypess &
(ss& '
$strss' 6
)ss6 7
;ss7 8
buu 
.uu 
Propertyuu 
<uu 
stringuu %
>uu% &
(uu& '
$struu' 2
)uu2 3
.vv 

IsRequiredvv #
(vv# $
)vv$ %
.ww 
HasColumnTypeww &
(ww& '
$strww' 6
)ww6 7
;ww7 8
byy 
.yy 
Propertyyy 
<yy 
boolyy #
>yy# $
(yy$ %
$stryy% 3
)yy3 4
.zz 
HasColumnTypezz &
(zz& '
$strzz' ,
)zz, -
;zz- .
b|| 
.|| 
Property|| 
<|| 
bool|| #
>||# $
(||$ %
$str||% 4
)||4 5
.}} 
HasColumnType}} &
(}}& '
$str}}' ,
)}}, -
;}}- .
b 
. 
Property 
< 
string %
>% &
(& '
$str' 7
)7 8
.
ÄÄ 
HasColumnType
ÄÄ &
(
ÄÄ& '
$str
ÄÄ' 6
)
ÄÄ6 7
;
ÄÄ7 8
b
ÇÇ 
.
ÇÇ 
Property
ÇÇ 
<
ÇÇ 
DateTime
ÇÇ '
?
ÇÇ' (
>
ÇÇ( )
(
ÇÇ) *
$str
ÇÇ* <
)
ÇÇ< =
.
ÉÉ 
HasColumnType
ÉÉ &
(
ÉÉ& '
$str
ÉÉ' 2
)
ÉÉ2 3
;
ÉÉ3 4
b
ÖÖ 
.
ÖÖ 
Property
ÖÖ 
<
ÖÖ 
string
ÖÖ %
>
ÖÖ% &
(
ÖÖ& '
$str
ÖÖ' 1
)
ÖÖ1 2
.
ÜÜ 

IsRequired
ÜÜ #
(
ÜÜ# $
)
ÜÜ$ %
.
áá 
HasColumnType
áá &
(
áá& '
$str
áá' 6
)
áá6 7
;
áá7 8
b
ââ 
.
ââ 
Property
ââ 
<
ââ 
string
ââ %
>
ââ% &
(
ââ& '
$str
ââ' 4
)
ââ4 5
.
ää 

IsRequired
ää #
(
ää# $
)
ää$ %
.
ãã 
HasColumnType
ãã &
(
ãã& '
$str
ãã' 6
)
ãã6 7
;
ãã7 8
b
çç 
.
çç 
HasKey
çç 
(
çç 
$str
çç !
)
çç! "
;
çç" #
b
èè 
.
èè 
ToTable
èè 
(
èè 
$str
èè '
)
èè' (
;
èè( )
}
êê 
)
êê 
;
êê 
modelBuilder
íí 
.
íí 
Entity
íí 
(
íí  
$str
íí  R
,
ííR S
b
ííT U
=>
ííV X
{
ìì 
b
îî 
.
îî 
HasOne
îî 
(
îî 
$str
îî B
,
îîB C
null
îîD H
)
îîH I
.
ïï 
WithOne
ïï  
(
ïï  !
)
ïï! "
.
ññ 
HasForeignKey
ññ &
(
ññ& '
$str
ññ' Y
,
ññY Z
$str
ññ[ e
)
ññe f
.
óó 
OnDelete
óó !
(
óó! "
DeleteBehavior
óó" 0
.
óó0 1
Cascade
óó1 8
)
óó8 9
.
òò 

IsRequired
òò #
(
òò# $
)
òò$ %
;
òò% &
}
ôô 
)
ôô 
;
ôô 
modelBuilder
õõ 
.
õõ 
Entity
õõ 
(
õõ  
$str
õõ  E
,
õõE F
b
õõG H
=>
õõI K
{
úú 
b
ùù 
.
ùù 
OwnsOne
ùù 
(
ùù 
$str
ùù D
,
ùùD E
$str
ùùF O
,
ùùO P
b1
ùùQ S
=>
ùùT V
{
ûû 
b1
üü 
.
üü 
Property
üü '
<
üü' (
Guid
üü( ,
>
üü, -
(
üü- .
$str
üü. 8
)
üü8 9
.
††  !
HasColumnType
††! .
(
††. /
$str
††/ A
)
††A B
;
††B C
b1
¢¢ 
.
¢¢ 
Property
¢¢ '
<
¢¢' (
string
¢¢( .
>
¢¢. /
(
¢¢/ 0
$str
¢¢0 6
)
¢¢6 7
.
££  !

IsRequired
££! +
(
££+ ,
)
££, -
.
§§  !
HasColumnType
§§! .
(
§§. /
$str
§§/ >
)
§§> ?
;
§§? @
b1
¶¶ 
.
¶¶ 
Property
¶¶ '
<
¶¶' (
string
¶¶( .
>
¶¶. /
(
¶¶/ 0
$str
¶¶0 9
)
¶¶9 :
.
ßß  !

IsRequired
ßß! +
(
ßß+ ,
)
ßß, -
.
®®  !
HasColumnType
®®! .
(
®®. /
$str
®®/ >
)
®®> ?
;
®®? @
b1
™™ 
.
™™ 
Property
™™ '
<
™™' (
string
™™( .
>
™™. /
(
™™/ 0
$str
™™0 <
)
™™< =
.
´´  !

IsRequired
´´! +
(
´´+ ,
)
´´, -
.
¨¨  !
HasColumnType
¨¨! .
(
¨¨. /
$str
¨¨/ >
)
¨¨> ?
;
¨¨? @
b1
ÆÆ 
.
ÆÆ 
Property
ÆÆ '
<
ÆÆ' (
string
ÆÆ( .
>
ÆÆ. /
(
ÆÆ/ 0
$str
ÆÆ0 8
)
ÆÆ8 9
.
ØØ  !

IsRequired
ØØ! +
(
ØØ+ ,
)
ØØ, -
.
∞∞  !
HasColumnType
∞∞! .
(
∞∞. /
$str
∞∞/ >
)
∞∞> ?
;
∞∞? @
b1
≤≤ 
.
≤≤ 
Property
≤≤ '
<
≤≤' (
string
≤≤( .
>
≤≤. /
(
≤≤/ 0
$str
≤≤0 <
)
≤≤< =
.
≥≥  !

IsRequired
≥≥! +
(
≥≥+ ,
)
≥≥, -
.
¥¥  !
HasColumnType
¥¥! .
(
¥¥. /
$str
¥¥/ >
)
¥¥> ?
;
¥¥? @
b1
∂∂ 
.
∂∂ 
Property
∂∂ '
<
∂∂' (
string
∂∂( .
>
∂∂. /
(
∂∂/ 0
$str
∂∂0 8
)
∂∂8 9
.
∑∑  !

IsRequired
∑∑! +
(
∑∑+ ,
)
∑∑, -
.
∏∏  !
HasColumnType
∏∏! .
(
∏∏. /
$str
∏∏/ >
)
∏∏> ?
;
∏∏? @
b1
∫∫ 
.
∫∫ 
HasKey
∫∫ %
(
∫∫% &
$str
∫∫& 0
)
∫∫0 1
;
∫∫1 2
b1
ºº 
.
ºº 
ToTable
ºº &
(
ºº& '
$str
ºº' 0
)
ºº0 1
;
ºº1 2
b1
ææ 
.
ææ 
	WithOwner
ææ (
(
ææ( )
)
ææ) *
.
øø  !
HasForeignKey
øø! .
(
øø. /
$str
øø/ 9
)
øø9 :
;
øø: ;
}
¿¿ 
)
¿¿ 
;
¿¿ 
b
¬¬ 
.
¬¬ 

Navigation
¬¬  
(
¬¬  !
$str
¬¬! *
)
¬¬* +
.
√√ 

IsRequired
√√ #
(
√√# $
)
√√$ %
;
√√% &
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
∆∆ 	
}
«« 
}»» Ü 
≤C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\20240610144334_AccountClientUpdate.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
public 

partial 
class 
AccountClientUpdate ,
:- .
	Migration/ 8
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str :
,: ;
table 
: 
$str (
)( )
;) *
migrationBuilder 
. 
DropPrimaryKey +
(+ ,
name 
: 
$str !
,! "
table 
: 
$str 
)  
;  !
migrationBuilder 
. 
RenameTable (
(( )
name 
: 
$str 
, 
newName 
: 
$str "
)" #
;# $
migrationBuilder 
. 
AddPrimaryKey *
(* +
name 
: 
$str "
," #
table 
: 
$str  
,  !
column 
: 
$str 
) 
; 
migrationBuilder 
. 
AddForeignKey *
(* +
name 
: 
$str ;
,; <
table   
:   
$str   (
,  ( )
column!! 
:!! 
$str!! "
,!!" #
principalTable"" 
:"" 
$str""  )
,"") *
principalColumn## 
:##  
$str##! %
,##% &
onDelete$$ 
:$$ 
ReferentialAction$$ +
.$$+ ,
Cascade$$, 3
)$$3 4
;$$4 5
}%% 	
	protected(( 
override(( 
void(( 
Down((  $
((($ %
MigrationBuilder((% 5
migrationBuilder((6 F
)((F G
{)) 	
migrationBuilder** 
.** 
DropForeignKey** +
(**+ ,
name++ 
:++ 
$str++ ;
,++; <
table,, 
:,, 
$str,, (
),,( )
;,,) *
migrationBuilder.. 
... 
DropPrimaryKey.. +
(..+ ,
name// 
:// 
$str// "
,//" #
table00 
:00 
$str00  
)00  !
;00! "
migrationBuilder22 
.22 
RenameTable22 (
(22( )
name33 
:33 
$str33 
,33  
newName44 
:44 
$str44 !
)44! "
;44" #
migrationBuilder66 
.66 
AddPrimaryKey66 *
(66* +
name77 
:77 
$str77 !
,77! "
table88 
:88 
$str88 
,88  
column99 
:99 
$str99 
)99 
;99 
migrationBuilder;; 
.;; 
AddForeignKey;; *
(;;* +
name<< 
:<< 
$str<< :
,<<: ;
table== 
:== 
$str== (
,==( )
column>> 
:>> 
$str>> "
,>>" #
principalTable?? 
:?? 
$str??  (
,??( )
principalColumn@@ 
:@@  
$str@@! %
,@@% &
onDeleteAA 
:AA 
ReferentialActionAA +
.AA+ ,
CascadeAA, 3
)AA3 4
;AA4 5
}BB 	
}CC 
}DD Ãx
µC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\20240610142554_AccountClient.Designer.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
[ 
	DbContext 
( 
typeof 
( "
AccountCreationContext ,
), -
)- .
]. /
[ 
	Migration 
( 
$str -
)- .
]. /
partial 
class 
AccountClient 
{ 
	protected 
override 
void 
BuildTargetModel  0
(0 1
ModelBuilder1 =
modelBuilder> J
)J K
{ 	
modelBuilder 
. 
HasAnnotation 
( 
$str /
,/ 0
$str1 8
)8 9
. 
HasAnnotation 
( 
$str ?
,? @
$numA D
)D E
;E F+
SqlServerModelBuilderExtensions +
.+ ,
UseIdentityColumns, >
(> ?
modelBuilder? K
)K L
;L M
modelBuilder 
. 
Entity 
(  
$str  R
,R S
bT U
=>V X
{ 
b 
. 
Property 
< 
Guid #
># $
($ %
$str% )
)) *
. 
ValueGeneratedOnAdd ,
(, -
)- .
.   
HasColumnType   &
(  & '
$str  ' 9
)  9 :
;  : ;
b"" 
."" 
Property"" 
<"" 
string"" %
>""% &
(""& '
$str""' 7
)""7 8
.## 

IsRequired## #
(### $
)##$ %
.$$ 
HasColumnType$$ &
($$& '
$str$$' 6
)$$6 7
;$$7 8
b&& 
.&& 
Property&& 
<&& 
string&& %
>&&% &
(&&& '
$str&&' 3
)&&3 4
.'' 

IsRequired'' #
(''# $
)''$ %
.(( 
HasColumnType(( &
(((& '
$str((' 6
)((6 7
;((7 8
b** 
.** 
Property** 
<** 
Guid** #
>**# $
(**$ %
$str**% /
)**/ 0
.++ 
HasColumnType++ &
(++& '
$str++' 9
)++9 :
;++: ;
b-- 
.-- 
Property-- 
<-- 
string-- %
>--% &
(--& '
$str--' 2
)--2 3
... 
HasColumnType.. &
(..& '
$str..' 6
)..6 7
;..7 8
b00 
.00 
Property00 
<00 
DateTime00 '
>00' (
(00( )
$str00) 6
)006 7
.11 
HasColumnType11 &
(11& '
$str11' 2
)112 3
;113 4
b33 
.33 
Property33 
<33 
string33 %
>33% &
(33& '
$str33' :
)33: ;
.44 

IsRequired44 #
(44# $
)44$ %
.55 
HasColumnType55 &
(55& '
$str55' 6
)556 7
;557 8
b77 
.77 
Property77 
<77 
string77 %
>77% &
(77& '
$str77' 7
)777 8
.88 
HasColumnType88 &
(88& '
$str88' 6
)886 7
;887 8
b:: 
.:: 
Property:: 
<:: 
DateTime:: '
?::' (
>::( )
(::) *
$str::* <
)::< =
.;; 
HasColumnType;; &
(;;& '
$str;;' 2
);;2 3
;;;3 4
b== 
.== 
Property== 
<== 
string== %
>==% &
(==& '
$str==' 4
)==4 5
.>> 

IsRequired>> #
(>># $
)>>$ %
.?? 
HasColumnType?? &
(??& '
$str??' 6
)??6 7
;??7 8
bAA 
.AA 
PropertyAA 
<AA 
decimalAA &
>AA& '
(AA' (
$strAA( 3
)AA3 4
.BB 
HasColumnTypeBB &
(BB& '
$strBB' 6
)BB6 7
;BB7 8
bDD 
.DD 
PropertyDD 
<DD 
decimalDD &
>DD& '
(DD' (
$strDD( 5
)DD5 6
.EE 
HasColumnTypeEE &
(EE& '
$strEE' 6
)EE6 7
;EE7 8
bGG 
.GG 
PropertyGG 
<GG 
stringGG %
>GG% &
(GG& '
$strGG' 9
)GG9 :
.HH 

IsRequiredHH #
(HH# $
)HH$ %
.II 
HasColumnTypeII &
(II& '
$strII' 6
)II6 7
;II7 8
bKK 
.KK 
PropertyKK 
<KK 
boolKK #
>KK# $
(KK$ %
$strKK% *
)KK* +
.LL 
HasColumnTypeLL &
(LL& '
$strLL' ,
)LL, -
;LL- .
bNN 
.NN 
PropertyNN 
<NN 
stringNN %
>NN% &
(NN& '
$strNN' :
)NN: ;
.OO 

IsRequiredOO #
(OO# $
)OO$ %
.PP 
HasColumnTypePP &
(PP& '
$strPP' 6
)PP6 7
;PP7 8
bRR 
.RR 
PropertyRR 
<RR 
stringRR %
>RR% &
(RR& '
$strRR' ;
)RR; <
.SS 

IsRequiredSS #
(SS# $
)SS$ %
.TT 
HasColumnTypeTT &
(TT& '
$strTT' 6
)TT6 7
;TT7 8
bVV 
.VV 
HasKeyVV 
(VV 
$strVV !
)VV! "
;VV" #
bXX 
.XX 
HasIndexXX 
(XX 
$strXX )
)XX) *
.YY 
IsUniqueYY !
(YY! "
)YY" #
;YY# $
b[[ 
.[[ 
ToTable[[ 
([[ 
$str[[ /
)[[/ 0
;[[0 1
}\\ 
)\\ 
;\\ 
modelBuilder^^ 
.^^ 
Entity^^ 
(^^  
$str^^  E
,^^E F
b^^G H
=>^^I K
{__ 
b`` 
.`` 
Property`` 
<`` 
Guid`` #
>``# $
(``$ %
$str``% )
)``) *
.aa 
ValueGeneratedOnAddaa ,
(aa, -
)aa- .
.bb 
HasColumnTypebb &
(bb& '
$strbb' 9
)bb9 :
;bb: ;
bdd 
.dd 
Propertydd 
<dd 
stringdd %
>dd% &
(dd& '
$strdd' 1
)dd1 2
.ee 

IsRequiredee #
(ee# $
)ee$ %
.ff 
HasColumnTypeff &
(ff& '
$strff' 6
)ff6 7
;ff7 8
bhh 
.hh 
Propertyhh 
<hh 
stringhh %
>hh% &
(hh& '
$strhh' 2
)hh2 3
.ii 
HasColumnTypeii &
(ii& '
$strii' 6
)ii6 7
;ii7 8
bkk 
.kk 
Propertykk 
<kk 
DateTimekk '
>kk' (
(kk( )
$strkk) 6
)kk6 7
.ll 
HasColumnTypell &
(ll& '
$strll' 2
)ll2 3
;ll3 4
bnn 
.nn 
Propertynn 
<nn 
DateTimenn '
>nn' (
(nn( )
$strnn) 6
)nn6 7
.oo 
HasColumnTypeoo &
(oo& '
$stroo' 2
)oo2 3
;oo3 4
bqq 
.qq 
Propertyqq 
<qq 
stringqq %
>qq% &
(qq& '
$strqq' .
)qq. /
.rr 

IsRequiredrr #
(rr# $
)rr$ %
.ss 
HasColumnTypess &
(ss& '
$strss' 6
)ss6 7
;ss7 8
buu 
.uu 
Propertyuu 
<uu 
stringuu %
>uu% &
(uu& '
$struu' 2
)uu2 3
.vv 

IsRequiredvv #
(vv# $
)vv$ %
.ww 
HasColumnTypeww &
(ww& '
$strww' 6
)ww6 7
;ww7 8
byy 
.yy 
Propertyyy 
<yy 
boolyy #
>yy# $
(yy$ %
$stryy% 3
)yy3 4
.zz 
HasColumnTypezz &
(zz& '
$strzz' ,
)zz, -
;zz- .
b|| 
.|| 
Property|| 
<|| 
bool|| #
>||# $
(||$ %
$str||% 4
)||4 5
.}} 
HasColumnType}} &
(}}& '
$str}}' ,
)}}, -
;}}- .
b 
. 
Property 
< 
string %
>% &
(& '
$str' 7
)7 8
.
ÄÄ 
HasColumnType
ÄÄ &
(
ÄÄ& '
$str
ÄÄ' 6
)
ÄÄ6 7
;
ÄÄ7 8
b
ÇÇ 
.
ÇÇ 
Property
ÇÇ 
<
ÇÇ 
DateTime
ÇÇ '
?
ÇÇ' (
>
ÇÇ( )
(
ÇÇ) *
$str
ÇÇ* <
)
ÇÇ< =
.
ÉÉ 
HasColumnType
ÉÉ &
(
ÉÉ& '
$str
ÉÉ' 2
)
ÉÉ2 3
;
ÉÉ3 4
b
ÖÖ 
.
ÖÖ 
Property
ÖÖ 
<
ÖÖ 
string
ÖÖ %
>
ÖÖ% &
(
ÖÖ& '
$str
ÖÖ' 1
)
ÖÖ1 2
.
ÜÜ 

IsRequired
ÜÜ #
(
ÜÜ# $
)
ÜÜ$ %
.
áá 
HasColumnType
áá &
(
áá& '
$str
áá' 6
)
áá6 7
;
áá7 8
b
ââ 
.
ââ 
Property
ââ 
<
ââ 
string
ââ %
>
ââ% &
(
ââ& '
$str
ââ' 4
)
ââ4 5
.
ää 

IsRequired
ää #
(
ää# $
)
ää$ %
.
ãã 
HasColumnType
ãã &
(
ãã& '
$str
ãã' 6
)
ãã6 7
;
ãã7 8
b
çç 
.
çç 
HasKey
çç 
(
çç 
$str
çç !
)
çç! "
;
çç" #
b
èè 
.
èè 
ToTable
èè 
(
èè 
$str
èè &
)
èè& '
;
èè' (
}
êê 
)
êê 
;
êê 
modelBuilder
íí 
.
íí 
Entity
íí 
(
íí  
$str
íí  R
,
ííR S
b
ííT U
=>
ííV X
{
ìì 
b
îî 
.
îî 
HasOne
îî 
(
îî 
$str
îî B
,
îîB C
null
îîD H
)
îîH I
.
ïï 
WithOne
ïï  
(
ïï  !
)
ïï! "
.
ññ 
HasForeignKey
ññ &
(
ññ& '
$str
ññ' Y
,
ññY Z
$str
ññ[ e
)
ññe f
.
óó 
OnDelete
óó !
(
óó! "
DeleteBehavior
óó" 0
.
óó0 1
Cascade
óó1 8
)
óó8 9
.
òò 

IsRequired
òò #
(
òò# $
)
òò$ %
;
òò% &
}
ôô 
)
ôô 
;
ôô 
modelBuilder
õõ 
.
õõ 
Entity
õõ 
(
õõ  
$str
õõ  E
,
õõE F
b
õõG H
=>
õõI K
{
úú 
b
ùù 
.
ùù 
OwnsOne
ùù 
(
ùù 
$str
ùù D
,
ùùD E
$str
ùùF O
,
ùùO P
b1
ùùQ S
=>
ùùT V
{
ûû 
b1
üü 
.
üü 
Property
üü '
<
üü' (
Guid
üü( ,
>
üü, -
(
üü- .
$str
üü. 8
)
üü8 9
.
††  !
HasColumnType
††! .
(
††. /
$str
††/ A
)
††A B
;
††B C
b1
¢¢ 
.
¢¢ 
Property
¢¢ '
<
¢¢' (
string
¢¢( .
>
¢¢. /
(
¢¢/ 0
$str
¢¢0 6
)
¢¢6 7
.
££  !

IsRequired
££! +
(
££+ ,
)
££, -
.
§§  !
HasColumnType
§§! .
(
§§. /
$str
§§/ >
)
§§> ?
;
§§? @
b1
¶¶ 
.
¶¶ 
Property
¶¶ '
<
¶¶' (
string
¶¶( .
>
¶¶. /
(
¶¶/ 0
$str
¶¶0 9
)
¶¶9 :
.
ßß  !

IsRequired
ßß! +
(
ßß+ ,
)
ßß, -
.
®®  !
HasColumnType
®®! .
(
®®. /
$str
®®/ >
)
®®> ?
;
®®? @
b1
™™ 
.
™™ 
Property
™™ '
<
™™' (
string
™™( .
>
™™. /
(
™™/ 0
$str
™™0 <
)
™™< =
.
´´  !

IsRequired
´´! +
(
´´+ ,
)
´´, -
.
¨¨  !
HasColumnType
¨¨! .
(
¨¨. /
$str
¨¨/ >
)
¨¨> ?
;
¨¨? @
b1
ÆÆ 
.
ÆÆ 
Property
ÆÆ '
<
ÆÆ' (
string
ÆÆ( .
>
ÆÆ. /
(
ÆÆ/ 0
$str
ÆÆ0 8
)
ÆÆ8 9
.
ØØ  !

IsRequired
ØØ! +
(
ØØ+ ,
)
ØØ, -
.
∞∞  !
HasColumnType
∞∞! .
(
∞∞. /
$str
∞∞/ >
)
∞∞> ?
;
∞∞? @
b1
≤≤ 
.
≤≤ 
Property
≤≤ '
<
≤≤' (
string
≤≤( .
>
≤≤. /
(
≤≤/ 0
$str
≤≤0 <
)
≤≤< =
.
≥≥  !

IsRequired
≥≥! +
(
≥≥+ ,
)
≥≥, -
.
¥¥  !
HasColumnType
¥¥! .
(
¥¥. /
$str
¥¥/ >
)
¥¥> ?
;
¥¥? @
b1
∂∂ 
.
∂∂ 
Property
∂∂ '
<
∂∂' (
string
∂∂( .
>
∂∂. /
(
∂∂/ 0
$str
∂∂0 8
)
∂∂8 9
.
∑∑  !

IsRequired
∑∑! +
(
∑∑+ ,
)
∑∑, -
.
∏∏  !
HasColumnType
∏∏! .
(
∏∏. /
$str
∏∏/ >
)
∏∏> ?
;
∏∏? @
b1
∫∫ 
.
∫∫ 
HasKey
∫∫ %
(
∫∫% &
$str
∫∫& 0
)
∫∫0 1
;
∫∫1 2
b1
ºº 
.
ºº 
ToTable
ºº &
(
ºº& '
$str
ºº' /
)
ºº/ 0
;
ºº0 1
b1
ææ 
.
ææ 
	WithOwner
ææ (
(
ææ( )
)
ææ) *
.
øø  !
HasForeignKey
øø! .
(
øø. /
$str
øø/ 9
)
øø9 :
;
øø: ;
}
¿¿ 
)
¿¿ 
;
¿¿ 
b
¬¬ 
.
¬¬ 

Navigation
¬¬  
(
¬¬  !
$str
¬¬! *
)
¬¬* +
.
√√ 

IsRequired
√√ #
(
√√# $
)
√√$ %
;
√√% &
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
∆∆ 	
}
«« 
}»» ≈F
¨C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\20240610142554_AccountClient.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
public		 

partial		 
class		 
AccountClient		 &
:		' (
	Migration		) 2
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
Guid& *
>* +
(+ ,
type, 0
:0 1
$str2 D
,D E
nullableF N
:N O
falseP U
)U V
,V W
Civility 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
	FirstName 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]
LastName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
PhoneNumber 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
IsEmailValid  
=! "
table# (
.( )
Column) /
</ 0
bool0 4
>4 5
(5 6
type6 :
:: ;
$str< A
,A B
nullableC K
:K L
falseM R
)R S
,S T
IsNumberValid !
=" #
table$ )
.) *
Column* 0
<0 1
bool1 5
>5 6
(6 7
type7 ;
:; <
$str= B
,B C
nullableD L
:L M
falseN S
)S T
,T U
DateOfBirth 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]
Address_Country #
=$ %
table& +
.+ ,
Column, 2
<2 3
string3 9
>9 :
(: ;
type; ?
:? @
$strA P
,P Q
nullableR Z
:Z [
false\ a
)a b
,b c
Address_Governance &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
type> B
:B C
$strD S
,S T
nullableU ]
:] ^
false_ d
)d e
,e f
Address_City  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
nullableO W
:W X
falseY ^
)^ _
,_ `
Address_PostalCode &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
type> B
:B C
$strD S
,S T
nullableU ]
:] ^
false_ d
)d e
,e f
Address_Number "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
nullableQ Y
:Y Z
false[ `
)` a
,a b
Address_Street   "
=  # $
table  % *
.  * +
Column  + 1
<  1 2
string  2 8
>  8 9
(  9 :
type  : >
:  > ?
$str  @ O
,  O P
nullable  Q Y
:  Y Z
false  [ `
)  ` a
,  a b
	CreatedBy!! 
=!! 
table!!  %
.!!% &
Column!!& ,
<!!, -
string!!- 3
>!!3 4
(!!4 5
type!!5 9
:!!9 :
$str!!; J
,!!J K
nullable!!L T
:!!T U
true!!V Z
)!!Z [
,!![ \
CreatedDate"" 
=""  !
table""" '
.""' (
Column""( .
<"". /
DateTime""/ 7
>""7 8
(""8 9
type""9 =
:""= >
$str""? J
,""J K
nullable""L T
:""T U
false""V [
)""[ \
,""\ ]
LastModifiedBy## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
string##2 8
>##8 9
(##9 :
type##: >
:##> ?
$str##@ O
,##O P
nullable##Q Y
:##Y Z
true##[ _
)##_ `
,##` a
LastModifiedDate$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
DateTime$$4 <
>$$< =
($$= >
type$$> B
:$$B C
$str$$D O
,$$O P
nullable$$Q Y
:$$Y Z
true$$[ _
)$$_ `
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% 0
,((0 1
x((2 3
=>((4 6
x((7 8
.((8 9
Id((9 ;
)((; <
;((< =
})) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateIndex++ (
(++( )
name,, 
:,, 
$str,, 3
,,,3 4
table-- 
:-- 
$str-- (
,--( )
column.. 
:.. 
$str.. "
,.." #
unique// 
:// 
true// 
)// 
;// 
migrationBuilder11 
.11 
AddForeignKey11 *
(11* +
name22 
:22 
$str22 :
,22: ;
table33 
:33 
$str33 (
,33( )
column44 
:44 
$str44 "
,44" #
principalTable55 
:55 
$str55  (
,55( )
principalColumn66 
:66  
$str66! %
,66% &
onDelete77 
:77 
ReferentialAction77 +
.77+ ,
Cascade77, 3
)773 4
;774 5
}88 	
	protected;; 
override;; 
void;; 
Down;;  $
(;;$ %
MigrationBuilder;;% 5
migrationBuilder;;6 F
);;F G
{<< 	
migrationBuilder== 
.== 
DropForeignKey== +
(==+ ,
name>> 
:>> 
$str>> :
,>>: ;
table?? 
:?? 
$str?? (
)??( )
;??) *
migrationBuilderAA 
.AA 
	DropTableAA &
(AA& '
nameBB 
:BB 
$strBB 
)BB 
;BB  
migrationBuilderDD 
.DD 
	DropIndexDD &
(DD& '
nameEE 
:EE 
$strEE 3
,EE3 4
tableFF 
:FF 
$strFF (
)FF( )
;FF) *
}GG 	
}HH 
}II —2
∂C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\20240608205948_CreateAccounts.Designer.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
[ 
	DbContext 
( 
typeof 
( "
AccountCreationContext ,
), -
)- .
]. /
[ 
	Migration 
( 
$str .
). /
]/ 0
partial 
class 
CreateAccounts  
{ 
	protected 
override 
void 
BuildTargetModel  0
(0 1
ModelBuilder1 =
modelBuilder> J
)J K
{ 	
modelBuilder 
. 
HasAnnotation 
( 
$str /
,/ 0
$str1 8
)8 9
. 
HasAnnotation 
( 
$str ?
,? @
$numA D
)D E
;E F+
SqlServerModelBuilderExtensions +
.+ ,
UseIdentityColumns, >
(> ?
modelBuilder? K
)K L
;L M
modelBuilder 
. 
Entity 
(  
$str  R
,R S
bT U
=>V X
{ 
b 
. 
Property 
< 
Guid #
># $
($ %
$str% )
)) *
. 
ValueGeneratedOnAdd ,
(, -
)- .
.   
HasColumnType   &
(  & '
$str  ' 9
)  9 :
;  : ;
b"" 
."" 
Property"" 
<"" 
string"" %
>""% &
(""& '
$str""' 7
)""7 8
.## 

IsRequired## #
(### $
)##$ %
.$$ 
HasColumnType$$ &
($$& '
$str$$' 6
)$$6 7
;$$7 8
b&& 
.&& 
Property&& 
<&& 
string&& %
>&&% &
(&&& '
$str&&' 3
)&&3 4
.'' 

IsRequired'' #
(''# $
)''$ %
.(( 
HasColumnType(( &
(((& '
$str((' 6
)((6 7
;((7 8
b** 
.** 
Property** 
<** 
Guid** #
>**# $
(**$ %
$str**% /
)**/ 0
.++ 
HasColumnType++ &
(++& '
$str++' 9
)++9 :
;++: ;
b-- 
.-- 
Property-- 
<-- 
string-- %
>--% &
(--& '
$str--' 2
)--2 3
... 
HasColumnType.. &
(..& '
$str..' 6
)..6 7
;..7 8
b00 
.00 
Property00 
<00 
DateTime00 '
>00' (
(00( )
$str00) 6
)006 7
.11 
HasColumnType11 &
(11& '
$str11' 2
)112 3
;113 4
b33 
.33 
Property33 
<33 
string33 %
>33% &
(33& '
$str33' :
)33: ;
.44 

IsRequired44 #
(44# $
)44$ %
.55 
HasColumnType55 &
(55& '
$str55' 6
)556 7
;557 8
b77 
.77 
Property77 
<77 
string77 %
>77% &
(77& '
$str77' 7
)777 8
.88 
HasColumnType88 &
(88& '
$str88' 6
)886 7
;887 8
b:: 
.:: 
Property:: 
<:: 
DateTime:: '
?::' (
>::( )
(::) *
$str::* <
)::< =
.;; 
HasColumnType;; &
(;;& '
$str;;' 2
);;2 3
;;;3 4
b== 
.== 
Property== 
<== 
string== %
>==% &
(==& '
$str==' 4
)==4 5
.>> 

IsRequired>> #
(>># $
)>>$ %
.?? 
HasColumnType?? &
(??& '
$str??' 6
)??6 7
;??7 8
bAA 
.AA 
PropertyAA 
<AA 
decimalAA &
>AA& '
(AA' (
$strAA( 3
)AA3 4
.BB 
HasColumnTypeBB &
(BB& '
$strBB' 6
)BB6 7
;BB7 8
bDD 
.DD 
PropertyDD 
<DD 
decimalDD &
>DD& '
(DD' (
$strDD( 5
)DD5 6
.EE 
HasColumnTypeEE &
(EE& '
$strEE' 6
)EE6 7
;EE7 8
bGG 
.GG 
PropertyGG 
<GG 
stringGG %
>GG% &
(GG& '
$strGG' 9
)GG9 :
.HH 

IsRequiredHH #
(HH# $
)HH$ %
.II 
HasColumnTypeII &
(II& '
$strII' 6
)II6 7
;II7 8
bKK 
.KK 
PropertyKK 
<KK 
boolKK #
>KK# $
(KK$ %
$strKK% *
)KK* +
.LL 
HasColumnTypeLL &
(LL& '
$strLL' ,
)LL, -
;LL- .
bNN 
.NN 
PropertyNN 
<NN 
stringNN %
>NN% &
(NN& '
$strNN' :
)NN: ;
.OO 

IsRequiredOO #
(OO# $
)OO$ %
.PP 
HasColumnTypePP &
(PP& '
$strPP' 6
)PP6 7
;PP7 8
bRR 
.RR 
PropertyRR 
<RR 
stringRR %
>RR% &
(RR& '
$strRR' ;
)RR; <
.SS 

IsRequiredSS #
(SS# $
)SS$ %
.TT 
HasColumnTypeTT &
(TT& '
$strTT' 6
)TT6 7
;TT7 8
bVV 
.VV 
HasKeyVV 
(VV 
$strVV !
)VV! "
;VV" #
bXX 
.XX 
ToTableXX 
(XX 
$strXX /
)XX/ 0
;XX0 1
}YY 
)YY 
;YY 
}[[ 	
}\\ 
}]] û4
≠C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Migrations\20240608205948_CreateAccounts.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Migrations- 7
{ 
public		 

partial		 
class		 
CreateAccounts		 '
:		( )
	Migration		* 3
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str '
,' (
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
Guid& *
>* +
(+ ,
type, 0
:0 1
$str2 D
,D E
nullableF N
:N O
falseP U
)U V
,V W
ClientId 
= 
table $
.$ %
Column% +
<+ ,
Guid, 0
>0 1
(1 2
type2 6
:6 7
$str8 J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]
Nationality 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
OtherNationality $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
false] b
)b c
,c d

CivilState 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< K
,K L
nullableM U
:U V
falseW \
)\ ]
,] ^
ProfessionalStatus &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
type> B
:B C
$strD S
,S T
nullableU ]
:] ^
false_ d
)d e
,e f
ActivityNature "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
nullableQ Y
:Y Z
false[ `
)` a
,a b
FieldOfProfession %
=& '
table( -
.- .
Column. 4
<4 5
string5 ;
>; <
(< =
type= A
:A B
$strC R
,R S
nullableT \
:\ ]
false^ c
)c d
,d e
	NetIncome 
= 
table  %
.% &
Column& ,
<, -
decimal- 4
>4 5
(5 6
type6 :
:: ;
$str< K
,K L
nullableM U
:U V
falseW \
)\ ]
,] ^
OtherIncome 
=  !
table" '
.' (
Column( .
<. /
decimal/ 6
>6 7
(7 8
type8 <
:< =
$str> M
,M N
nullableO W
:W X
falseY ^
)^ _
,_ `
PPE 
= 
table 
.  
Column  &
<& '
bool' +
>+ ,
(, -
type- 1
:1 2
$str3 8
,8 9
nullable: B
:B C
falseD I
)I J
,J K
PoliticalFunction %
=& '
table( -
.- .
Column. 4
<4 5
string5 ;
>; <
(< =
type= A
:A B
$strC R
,R S
nullableT \
:\ ]
false^ c
)c d
,d e
	CreatedBy 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; J
,J K
nullableL T
:T U
trueV Z
)Z [
,[ \
CreatedDate 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]
LastModifiedBy   "
=  # $
table  % *
.  * +
Column  + 1
<  1 2
string  2 8
>  8 9
(  9 :
type  : >
:  > ?
$str  @ O
,  O P
nullable  Q Y
:  Y Z
true  [ _
)  _ `
,  ` a
LastModifiedDate!! $
=!!% &
table!!' ,
.!!, -
Column!!- 3
<!!3 4
DateTime!!4 <
>!!< =
(!!= >
type!!> B
:!!B C
$str!!D O
,!!O P
nullable!!Q Y
:!!Y Z
true!![ _
)!!_ `
}"" 
,"" 
constraints## 
:## 
table## "
=>### %
{$$ 
table%% 
.%% 

PrimaryKey%% $
(%%$ %
$str%%% 9
,%%9 :
x%%; <
=>%%= ?
x%%@ A
.%%A B
Id%%B D
)%%D E
;%%E F
}&& 
)&& 
;&& 
}'' 	
	protected** 
override** 
void** 
Down**  $
(**$ %
MigrationBuilder**% 5
migrationBuilder**6 F
)**F G
{++ 	
migrationBuilder,, 
.,, 
	DropTable,, &
(,,& '
name-- 
:-- 
$str-- '
)--' (
;--( )
}.. 	
}// 
}00 ‰)
ùC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Infrastructure\Extensions\HostExtension.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Infrastructure ,
., -

Extensions- 7
{ 
public 

static 
class 
HostExtensions &
{ 
public		 
static		 
IHost		 
MigrateDatabase		 +
<		+ ,
TContext		, 4
>		4 5
(		5 6
this		6 :
IHost		; @
host		A E
,		E F
Action		G M
<		M N
TContext		N V
,		V W
IServiceProvider		X h
>		h i
seeder		j p
)		p q
where		r w
TContext			x Ä
:
		Å Ç
	DbContext
		É å
{

 	
using 
( 
var 
scope 
= 
host #
.# $
Services$ ,
., -
CreateScope- 8
(8 9
)9 :
): ;
{ 
var 
services 
= 
scope $
.$ %
ServiceProvider% 4
;4 5
var 
logger 
= 
services %
.% &
GetRequiredService& 8
<8 9
ILogger9 @
<@ A
TContextA I
>I J
>J K
(K L
)L M
;M N
var 
context 
= 
services &
.& '

GetService' 1
<1 2
TContext2 :
>: ;
(; <
)< =
;= >
try 
{ 
logger 
. 
LogInformation )
() *
$str* f
,f g
typeofh n
(n o
TContexto w
)w x
.x y
Namey }
)} ~
;~ 
var 
retry 
= 
Policy  &
.& '
Handle' -
<- .
SqlException. :
>: ;
(; <
)< =
. 
WaitAndRetry )
() *

retryCount  *
:* +
$num, -
,- .!
sleepDurationProvider  5
:5 6
retryAttempt7 C
=>D F
TimeSpanG O
.O P
FromSecondsP [
([ \
Math\ `
.` a
Powa d
(d e
$nume f
,f g
retryAttempth t
)t u
)u v
,v w
onRetry  '
:' (
() *
	exception* 3
,3 4

retryCount5 ?
,? @
contextA H
)H I
=>J L
{  !
logger$ *
.* +
LogError+ 3
(3 4
$"4 6
$str6 <
{< =

retryCount= G
}G H
$strH L
{L M
contextM T
.T U
	PolicyKeyU ^
}^ _
$str_ c
{c d
contextd k
.k l
OperationKeyl x
}x y
$str	y É
{
É Ñ
	exception
Ñ ç
}
ç é
$str
é è
"
è ê
)
ê ë
;
ë í
}  !
)! "
;" #
retry!! 
.!! 
Execute!! !
(!!! "
(!!" #
)!!# $
=>!!% '
InvokeSeeder!!( 4
(!!4 5
seeder!!5 ;
,!!; <
context!!= D
,!!D E
services!!F N
)!!N O
)!!O P
;!!P Q
logger## 
.## 
LogInformation## )
(##) *
$str##* e
,##e f
typeof##g m
(##m n
TContext##n v
)##v w
.##w x
Name##x |
)##| }
;##} ~
}$$ 
catch%% 
(%% 
SqlException%% #
ex%%$ &
)%%& '
{&& 
logger'' 
.'' 
LogError'' #
(''# $
ex''$ &
,''& '
$str''( x
,''x y
typeof	''z Ä
(
''Ä Å
TContext
''Å â
)
''â ä
.
''ä ã
Name
''ã è
)
''è ê
;
''ê ë
}(( 
})) 
return++ 
host++ 
;++ 
},, 	
private.. 
static.. 
void.. 
InvokeSeeder.. (
<..( )
TContext..) 1
>..1 2
(..2 3
Action..3 9
<..9 :
TContext..: B
,..B C
IServiceProvider..D T
>..T U
seeder..V \
,..\ ]
TContext..^ f
context..g n
,..n o
IServiceProvider	..p Ä
services
..Å â
)
..â ä
where// 
TContext// 
:// 
	DbContext// &
{00 	
context11 
.11 
Database11 
.11 
Migrate11 $
(11$ %
)11% &
;11& '
seeder22 
(22 
context22 
,22 
services22 $
)22$ %
;22% &
}33 	
}44 
}55 ãM
°C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Accounts\CreateAccount\CreateAccountHandler.cs
	namespace		 	
AccountCreation		
 
.		 
API		 
.		 
Accounts		 &
.		& '
CreateAccount		' 4
{

 
public 

record  
CreateAccountCommand &
(& '
Guid 
ClientId 
, 
string 
Nationality 
, 
string 
OtherNationality 
,  
string 

CivilState 
, 
string 
ProfessionalStatus !
,! "
string 
ActivityNature 
, 
string 
FieldOfProfession  
,  !
decimal 
	NetIncome 
, 
decimal 
OtherIncome 
, 
bool 
PPE 
, 
string 
PoliticalFunction  
) 	
:	 

ICommand 
< 
CreateAccountResult '
>' (
;( )
public 

record 
CreateAccountResult %
(% &
Guid& *
Id+ -
)- .
;. /
public"" 

class""  
CreateAccountHandler"" %
:""& '
ICommandHandler""( 7
<""7 8 
CreateAccountCommand""8 L
,""L M
CreateAccountResult""N a
>""a b
{## 
private%% 
readonly%% &
IAccountCreationRepository%% 3&
_accountCreationRepository%%4 N
;%%N O
private&& 
readonly&& 

IValidator&& #
<&&# $ 
CreateAccountCommand&&$ 8
>&&8 9

_validator&&: D
;&&D E
public((  
CreateAccountHandler(( #
(((# $

IValidator(($ .
<((. / 
CreateAccountCommand((/ C
>((C D
	validator((E N
,((N O&
IAccountCreationRepository((P j&
accountCreationRepository	((k Ñ
)
((Ö Ü
{)) 	&
_accountCreationRepository** &
=**' (%
accountCreationRepository**) B
;**B C

_validator++ 
=++ 
	validator++ "
;++" #
},, 	
public.. 
async.. 
Task.. 
<.. 
CreateAccountResult.. -
>..- .
Handle../ 5
(..5 6 
CreateAccountCommand..6 J
request..K R
,..R S
CancellationToken..T e
cancellationToken..f w
)..w x
{// 	
var00 
validationResult00  
=00! "
await00# (

_validator00) 3
.003 4
ValidateAsync004 A
(00A B
request00B I
,00I J
cancellationToken00K \
)00\ ]
;00] ^
if22 
(22 
!22 
validationResult22 !
.22! "
IsValid22" )
)22) *
{33 
throw44 
new44 
ValidationException44 -
(44- .
validationResult44. >
.44> ?
Errors44? E
)44E F
;44F G
}55 
var88 
account88 
=88 
new88 !
AccountCreationEntity88 3
{99 
ClientId:: 
=:: 
request:: "
.::" #
ClientId::# +
,::+ ,
Nationality;; 
=;; 
request;; %
.;;% &
Nationality;;& 1
,;;1 2
OtherNationality<<  
=<<! "
request<<# *
.<<* +
OtherNationality<<+ ;
,<<; <

CivilState== 
=== 
request== $
.==$ %

CivilState==% /
,==/ 0
ProfessionalStatus>> "
=>># $
request>>% ,
.>>, -
ProfessionalStatus>>- ?
,>>? @
ActivityNature?? 
=??  
request??! (
.??( )
ActivityNature??) 7
,??7 8
FieldOfProfession@@ !
=@@" #
request@@$ +
.@@+ ,
FieldOfProfession@@, =
,@@= >
	NetIncomeAA 
=AA 
requestAA #
.AA# $
	NetIncomeAA$ -
,AA- .
OtherIncomeBB 
=BB 
requestBB %
.BB% &
OtherIncomeBB& 1
,BB1 2
PPECC 
=CC 
requestCC 
.CC 
PPECC !
,CC! "
PoliticalFunctionDD !
=DD" #
requestDD$ +
.DD+ ,
PoliticalFunctionDD, =
}EE 
;EE 
awaitHH &
_accountCreationRepositoryHH ,
.HH, -
AddAsyncHH- 5
(HH5 6
accountHH6 =
)HH> ?
;HH? @
returnKK 
newKK 
CreateAccountResultKK *
(KK* +
accountKK+ 2
.KK2 3
IdKK3 5
)KK5 6
;KK6 7
}LL 	
publicOO 
classOO )
CreateAccountCommandValidatorOO 2
:OO3 4
AbstractValidatorOO5 F
<OOF G 
CreateAccountCommandOOG [
>OO[ \
{PP 	
publicQQ )
CreateAccountCommandValidatorQQ 0
(QQ0 1
)QQ1 2
{RR 
RuleForSS 
(SS 
xSS 
=>SS 
xSS 
.SS 
ClientIdSS '
)SS' (
.TT 
NotEmptyTT 
(TT 
)TT 
.TT  
WithMessageTT  +
(TT+ ,
$strTT, C
)TTC D
;TTD E
RuleForVV 
(VV 
xVV 
=>VV 
xVV 
.VV 
NationalityVV *
)VV* +
.WW 
NotEmptyWW 
(WW 
)WW 
.WW  
WithMessageWW  +
(WW+ ,
$strWW, F
)WWF G
.XX 
MaximumLengthXX "
(XX" #
$numXX# &
)XX& '
.XX' (
WithMessageXX( 3
(XX3 4
$strXX4 g
)XXg h
;XXh i
RuleForZZ 
(ZZ 
xZZ 
=>ZZ 
xZZ 
.ZZ 
OtherNationalityZZ /
)ZZ/ 0
.[[ 
MaximumLength[[ "
([[" #
$num[[# &
)[[& '
.[[' (
WithMessage[[( 3
([[3 4
$str[[4 m
)[[m n
;[[n o
RuleFor]] 
(]] 
x]] 
=>]] 
x]] 
.]] 

CivilState]] )
)]]) *
.^^ 
NotEmpty^^ 
(^^ 
)^^ 
.^^  
WithMessage^^  +
(^^+ ,
$str^^, F
)^^F G
.__ 
MaximumLength__ "
(__" #
$num__# %
)__% &
.__& '
WithMessage__' 2
(__2 3
$str__3 e
)__e f
;__f g
RuleForaa 
(aa 
xaa 
=>aa 
xaa 
.aa 
ProfessionalStatusaa 1
)aa1 2
.bb 
NotEmptybb 
(bb 
)bb 
.bb  
WithMessagebb  +
(bb+ ,
$strbb, N
)bbN O
.cc 
MaximumLengthcc "
(cc" #
$numcc# &
)cc& '
.cc' (
WithMessagecc( 3
(cc3 4
$strcc4 o
)cco p
;ccp q
RuleForee 
(ee 
xee 
=>ee 
xee 
.ee 
ActivityNatureee -
)ee- .
.ff 
NotEmptyff 
(ff 
)ff 
.ff  
WithMessageff  +
(ff+ ,
$strff, J
)ffJ K
.gg 
MaximumLengthgg "
(gg" #
$numgg# &
)gg& '
.gg' (
WithMessagegg( 3
(gg3 4
$strgg4 k
)ggk l
;ggl m
RuleForii 
(ii 
xii 
=>ii 
xii 
.ii 
FieldOfProfessionii 0
)ii0 1
.jj 
NotEmptyjj 
(jj 
)jj 
.jj  
WithMessagejj  +
(jj+ ,
$strjj, N
)jjN O
.kk 
MaximumLengthkk "
(kk" #
$numkk# &
)kk& '
.kk' (
WithMessagekk( 3
(kk3 4
$strkk4 o
)kko p
;kkp q
RuleFormm 
(mm 
xmm 
=>mm 
xmm 
.mm 
	NetIncomemm (
)mm( )
.nn 
GreaterThannn  
(nn  !
$numnn! "
)nn" #
.nn# $
WithMessagenn$ /
(nn/ 0
$strnn0 T
)nnT U
;nnU V
RuleForpp 
(pp 
xpp 
=>pp 
xpp 
.pp 
OtherIncomepp *
)pp* +
.qq  
GreaterThanOrEqualToqq )
(qq) *
$numqq* +
)qq+ ,
.qq, -
WithMessageqq- 8
(qq8 9
$strqq9 k
)qqk l
;qql m
RuleForss 
(ss 
xss 
=>ss 
xss 
.ss 
PPEss "
)ss" #
.tt 
NotNulltt 
(tt 
)tt 
.tt 
WithMessagett *
(tt* +
$strtt+ =
)tt= >
;tt> ?
RuleForvv 
(vv 
xvv 
=>vv 
xvv 
.vv 
PoliticalFunctionvv 0
)vv0 1
.ww 
MaximumLengthww "
(ww" #
$numww# &
)ww& '
.ww' (
WithMessageww( 3
(ww3 4
$strww4 n
)wwn o
;wwo p
}xx 
}yy 	
}{{ 
}|| ã
¢C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\AccountCreation\AccountCreation.API\Accounts\CreateAccount\CreateAccountEndpoint.cs
	namespace 	
AccountCreation
 
. 
API 
. 
Accounts &
.& '
CreateAccount' 4
{ 
public		 

record		  
CreateAccountRequest		 &
(		& '
Guid 
ClientId 
, 
string 
Nationality 
, 
string 
OtherNationality 
,  
string 

CivilState 
, 
string 
ProfessionalStatus !
,! "
string 
ActivityNature 
, 
string 
FieldOfProfession  
,  !
decimal 
	NetIncome 
, 
decimal 
OtherIncome 
, 
bool 
PPE 
, 
string 
PoliticalFunction  
) 	
;	 

public 

record !
CreateAccountResponse '
(' (
Guid( ,
Id- /
)/ 0
;0 1
public 

class !
CreateAccountEndpoint &
:' (
ICarterModule) 6
{ 
public 
void 
	AddRoutes 
( !
IEndpointRouteBuilder 3
app4 7
)7 8
{   	
app!! 
.!! 
MapPost!! 
(!! 
$str!! #
,!!# $
async"" 
(""  
CreateAccountRequest"" '
request""( /
,""/ 0
ISender""1 8
sender""9 ?
)""? @
=>""A C
{## 
var$$ 
command$$ 
=$$ 
request$$ %
.$$% &
Adapt$$& +
<$$+ , 
CreateAccountCommand$$, @
>$$@ A
($$A B
)$$B C
;$$C D
var&& 
result&& 
=&& 
await&& "
sender&&# )
.&&) *
Send&&* .
(&&. /
command&&/ 6
)&&6 7
;&&7 8
var(( 
response(( 
=(( 
result(( %
.((% &
Adapt((& +
<((+ ,!
CreateAccountResponse((, A
>((A B
(((B C
)((C D
;((D E
return** 
Results** 
.** 
Created** &
(**& '
$"**' )
$str**) 2
{**2 3
response**3 ;
.**; <
Id**< >
}**> ?
"**? @
,**@ A
response**B J
)**J K
;**K L
},, 
),, 
.-- 	
WithName--	 
(-- 
$str-- !
)--! "
... 	
Produces..	 
<.. !
CreateAccountResponse.. '
>..' (
(..( )
StatusCodes..) 4
...4 5
Status201Created..5 E
)..E F
.// 	
ProducesProblem//	 
(// 
StatusCodes// $
.//$ %
Status400BadRequest//% 8
)//8 9
.00 	
WithSummary00	 
(00 
$str00 %
)00% &
.11 	
WithDescription11	 
(11 
$str11 )
)11) *
;11* +
}22 	
}33 
}44 