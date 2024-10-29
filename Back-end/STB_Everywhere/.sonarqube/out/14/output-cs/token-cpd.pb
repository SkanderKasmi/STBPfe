Â
±C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\obj\Debug\net8.0\Registration.API.MvcApplicationPartsAssemblyInfo.cs
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
]r s›
ûC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\obj\Debug\net8.0\Registration.API.AssemblyInfo.cs
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyCompanyAttribute 5
(5 6
$str6 H
)H I
]I J
[ 
assembly 	
:	 

System 
. 

Reflection 
. *
AssemblyConfigurationAttribute ;
(; <
$str< C
)C D
]D E
[ 
assembly 	
:	 

System 
. 

Reflection 
. (
AssemblyFileVersionAttribute 9
(9 :
$str: C
)C D
]D E
[ 
assembly 	
:	 

System 
. 

Reflection 
. 1
%AssemblyInformationalVersionAttribute B
(B C
$strC s
)s t
]t u
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyProductAttribute 5
(5 6
$str6 H
)H I
]I J
[ 
assembly 	
:	 

System 
. 

Reflection 
. "
AssemblyTitleAttribute 3
(3 4
$str4 F
)F G
]G H
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyVersionAttribute 5
(5 6
$str6 ?
)? @
]@ AØ
¨C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
Ñ Ö£
†C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\obj\Debug\net8.0\Registration.API.GlobalUsings.g.csÏ=
wC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\Program.cs
internal 
class	 
Program 
{ 
private 
static 
void 
Main 
( 
string #
[# $
]$ %
args& *
)* +
{ 
var 
builder 
= 
WebApplication $
.$ %
CreateBuilder% 2
(2 3
args3 7
)7 8
;8 9
builder 
. 
Host 
. 

UseSerilog 
(  

SeriLogger  *
.* +
	Configure+ 4
)4 5
;5 6
builder 
. 
Services 
. #
AddEndpointsApiExplorer 0
(0 1
)1 2
;2 3
builder 
. 
Services 
. 
AddSwaggerGen &
(& '
)' (
;( )
builder 
. 
Services 
. 
AddSingleton %
<% &
RabbitMQService& 5
>5 6
(6 7
)7 8
;8 9
builder"" 
."" 
Services"" 
."" 

AddMediatR"" #
(""# $
typeof""$ *
(""* +
StartUp""+ 2
)""2 3
.""3 4
Assembly""4 <
)""< =
;""= >
builder## 
.## 
Services## 
.## 

AddMediatR## #
(### $
typeof##$ *
(##* +%
ClientRegistrationCommand##+ D
)##D E
.##E F
GetTypeInfo##F Q
(##Q R
)##R S
.##S T
Assembly##T \
)##\ ]
;##] ^
builder$$ 
.$$ 
Services$$ 
.$$ 
	AddScoped$$ "
($$" #
typeof$$# )
($$) *
IClientRepository$$* ;
)$$; <
,$$< =
typeof$$> D
($$D E
ClientRepository$$E U
)$$U V
)$$V W
;$$W X
builder%% 
.%% 
Services%% 
.%% 
AddAutoMapper%% &
(%%& '
Assembly%%' /
.%%/ 0 
GetExecutingAssembly%%0 D
(%%D E
)%%E F
)%%F G
;%%G H
builder&& 
.&& 
Services&& 
.&& %
AddValidatorsFromAssembly&& 2
(&&2 3
Assembly&&3 ;
.&&; < 
GetExecutingAssembly&&< P
(&&P Q
)&&Q R
)&&R S
;&&S T
builder** 
.** 
Services** 
.** 
AddTransient** %
(**% &
typeof**& ,
(**, -
IPipelineBehavior**- >
<**> ?
,**? @
>**@ A
)**A B
,**B C
typeof**D J
(**J K'
UnhandledExceptionBehaviour**K f
<**f g
,**g h
>**h i
)**i j
)**j k
;**k l
builder++ 
.++ 
Services++ 
.++ 
AddTransient++ %
(++% &
typeof++& ,
(++, -
IPipelineBehavior++- >
<++> ?
,++? @
>++@ A
)++A B
,++B C
typeof++D J
(++J K
ValidationBehaviour++K ^
<++^ _
,++_ `
>++` a
)++a b
)++b c
;++c d
builder,, 
.,, 
Services,, 
.,, 
AddTransient,, %
<,,% &$
LoggingDelegatingHandler,,& >
>,,> ?
(,,? @
),,@ A
;,,A B
builder11 
.11 
Services11 
.11 
AddDbContext11 %
<11% &
RegistrationContext11& 9
>119 :
(11: ;
options11; B
=>11C E
options22 
.22  
UseSqlServer22  ,
(22, -
builder22- 4
.224 5
Configuration225 B
.22B C
GetConnectionString22C V
(22V W
$str22W i
)22i j
,22j k
options22l s
=>22t v
options22w ~
.22~ !
EnableRetryOnFailure	22 ì
(
22ì î
)
22î ï
)
22ï ñ
)
22ñ ó
;
22ó ò
builder33 
.33 
Services33 
.33 
	AddScoped33 "
(33" #
typeof33# )
(33) *
IAsyncRepository33* :
<33: ;
>33; <
)33< =
,33= >
typeof33? E
(33E F
RepositoryBase33F T
<33T U
>33U V
)33V W
)33W X
;33X Y
builder44 
.44 
Services44 
.44 
	AddScoped44 "
<44" #
IClientRepository44# 4
,444 5
ClientRepository446 F
>44F G
(44G H
)44H I
;44I J
builder77 
.77 
Services77 
.77 
AddAutoMapper77 &
(77& '
typeof77' -
(77- .
Program77. 5
)775 6
)776 7
;777 8
builder88 
.88 
Services88 
.88 
AddCors88  
(88  !
options88! (
=>88) +
{99 	
options99
 
.99 
AddDefaultPolicy99 "
(99" #
builder99# *
=>99+ -
builder99. 5
.995 6
AllowAnyOrigin996 D
(99D E
)99E F
.99F G
AllowAnyMethod99G U
(99U V
)99V W
.99W X
AllowAnyHeader99X f
(99f g
)99g h
)99h i
;99i j
}99k l
)99l m
;99m n
builder:: 
.:: 
Services:: 
.:: 
AddControllers:: '
(::' (
)::( )
;::) *
builder<< 
.<< 
Services<< 
.<< 
AddHealthChecks<< (
(<<( )
)<<) *
.<<* +
AddDbContextCheck<<+ <
<<<< =
RegistrationContext<<= P
><<P Q
(<<Q R
)<<R S
;<<S T
var?? 
app?? 
=?? 
builder?? 
.?? 
Build?? 
(??  
)??  !
;??! "
app@@ 
.@@ 
MigrateDatabase@@ 
<@@ 
RegistrationContext@@ /
>@@/ 0
(@@0 1
(@@1 2
context@@2 9
,@@9 :
services@@; C
)@@C D
=>@@E G
{AA	 

}CC	 

)CC
 
;CC 
appJJ 
.JJ 

UseSwaggerJJ 
(JJ 
)JJ 
;JJ 
appKK 
.KK 
UseSwaggerUIKK 
(KK 
)KK 
;KK 
appRR 
.RR 
MapHealthChecksRR 
(RR 
$strRR !
,RR! "
newRR# &
HealthCheckOptionsRR' 9
(RR9 :
)RR: ;
{SS 	
	PredicateTT 
=TT 
_TT 
=>TT 
trueTT !
,TT! "
ResponseWriterUU 
=UU 
UIResponseWriterUU -
.UU- .&
WriteHealthCheckUIResponseUU. H
}VV 	
)VV	 

;VV 
appXX 
.XX 
MapControllersXX 
(XX 
)XX 
;XX 
appYY 
.YY 

UseRoutingYY 
(YY 
)YY 
;YY 
appZZ 
.ZZ 
UseAuthorizationZZ 
(ZZ 
)ZZ 
;ZZ 
app[[ 
.[[ 
UseCors[[ 
([[ 
)[[ 
;[[ 
app]] 
.]] 
Run]] 
(]] 
)]] 
;]] 
}^^ 
}bb ¢)
âC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\Extensions\HostExtensions.cs
	namespace 	
Registration
 
. 
API 
. 

Extensions %
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
}55 ƒ"
éC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.API\Controllers\RegisterController.cs
	namespace 	
Registration
 
. 
API 
. 
Controllers &
{		 
[ 
ApiController 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 

EnableCors 
( 
$str %
)% &
]& '
public 

class 
RegisterController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
RegisterController !
(! "
	IMediator" +
mediator, 4
)4 5
{ 	
	_mediator 
= 
mediator  
??! #
throw$ )
new* -!
ArgumentNullException. C
(C D
nameofD J
(J K
mediatorK S
)S T
)T U
;U V
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
>& '
Register( 0
(0 1
[1 2
FromBody2 :
]: ;%
ClientRegistrationCommand< U
commandV ]
)] ^
{ 	
try 
{ 
var   
result   
=   
await   "
	_mediator  # ,
.  , -
Send  - 1
(  1 2
command  2 9
)  9 :
;  : ;
return!! 
Ok!! 
(!! 
result!!  
)!!  !
;!!! "
}## 
catch## 
(## 
	Exception## 
ex## !
)##! "
{$$ 
return&& 

StatusCode&& !
(&&! "
$num&&" %
,&&% &
$"&&' )
$str&&) <
{&&< =
ex&&= ?
.&&? @
Message&&@ G
}&&G H
"&&H I
)&&I J
;&&J K
}(( 
})) 	
[,, 	
	HttpPatch,,	 
(,, 
$str,, -
),,- .
],,. /
public-- 
async-- 
Task-- 
<-- 
ActionResult-- &
>--& '
ValidateEmail--( 5
(--5 6
Guid--6 :
clientId--; C
,--C D
[--E F
FromBody--F N
]--N O
VerifyEmailCommand--P b
command--c j
)--j k
{.. 	
try00 
{11 
var33 
result33 
=33 
await33 "
	_mediator33# ,
.33, -
Send33- 1
(331 2
command332 9
)339 :
;33: ;
return44 
Ok44 
(44 
result44  
)44  !
;44! "
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 
return:: 

BadRequest:: !
(::! "
ex::" $
.::$ %
Message::% ,
)::, -
;::- .
};; 
}== 	
[?? 	
	HttpPatch??	 
(?? 
$str?? 3
)??3 4
]??4 5
public@@ 
async@@ 
Task@@ 
<@@ 
ActionResult@@ &
>@@& '
ValidatePhoneNumber@@( ;
(@@; <
Guid@@< @
clientId@@A I
,@@I J
[@@K L
FromBody@@L T
]@@T U$
VerifyPhoneNumberCommand@@V n
command@@o v
)@@v w
{AA 	
tryCC 
{DD 
varFF 
resultFF 
=FF 
awaitFF "
	_mediatorFF# ,
.FF, -
SendFF- 1
(FF1 2
commandFF2 9
)FF9 :
;FF: ;
returnGG 
OkGG 
(GG 
resultGG  
)GG  !
;GG! "
}II 
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ  
{KK 
returnMM 

BadRequestMM !
(MM! "
exMM" $
.MM$ %
MessageMM% ,
)MM, -
;MM- .
}NN 
}PP 	
}SS 
}TT 