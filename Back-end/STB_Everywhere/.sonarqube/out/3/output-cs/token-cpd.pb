Ò
“C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\Common.Logging\obj\Debug\net8.0\Common.Logging.AssemblyInfo.cs
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
$str6 F
)F G
]G H
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
$str6 F
)F G
]G H
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
$str4 D
)D E
]E F
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
]@ A¦
£C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\Common.Logging\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
$str	y ƒ
)
ƒ „
]
„ …˜
•C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\Common.Logging\obj\Debug\net8.0\Common.Logging.GlobalUsings.g.cs©
qC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\Common.Logging\SeriLogger.cs
	namespace 	
Common
 
. 
Logging 
{ 
public 

static 
class 

SeriLogger "
{ 
public 
static 
Action 
< 
HostBuilderContext /
,/ 0
LoggerConfiguration1 D
>D E
	ConfigureF O
=>P R
( 
context 
, 
configuration "
)" #
=>$ &
{ 
var 

elasticUri 
= 
context  '
.' (
Configuration( 5
.5 6
GetValue6 >
<> ?
string? E
>E F
(F G
$strG a
)a b
;b c
configuration 
. 
Enrich 
. 
FromLogContext *
(* +
)+ ,
. 
Enrich 
. 
WithMachineName +
(+ ,
), -
. 
WriteTo 
. 
Debug "
(" #
)# $
. 
WriteTo 
. 
Console $
($ %
)% &
. 
WriteTo 
. 
Elasticsearch *
(* +
new $
ElasticsearchSinkOptions 4
(4 5
new5 8
Uri9 <
(< =

elasticUri= G
)G H
)H I
{ 
IndexFormat '
=( )
$"* ,
$str, 4
{4 5
context5 <
.< =
HostingEnvironment= O
.O P
ApplicationNameP _
?_ `
.` a
ToLowera h
(h i
)i j
.j k
Replacek r
(r s
$strs v
,v w
$strx {
){ |
}| }
$str} ~
{~ 
context	 †
.
† ‡ 
HostingEnvironment
‡ ™
.
™ š
EnvironmentName
š ©
?
© ª
.
ª «
ToLower
« ²
(
² ³
)
³ ´
.
´ µ
Replace
µ ¼
(
¼ ½
$str
½ À
,
À Á
$str
Â Å
)
Å Æ
}
Æ Ç
$str
Ç È
{
È É
DateTime
É Ñ
.
Ñ Ò
UtcNow
Ò Ø
:
Ø Ù
$str
Ù à
}
à á
"
á â
,
â ã 
AutoRegisterTemplate 0
=1 2
true3 7
,7 8
NumberOfShards *
=+ ,
$num- .
,. /
NumberOfReplicas ,
=- .
$num/ 0
}   
)   
.!! 
Enrich!! 
.!! 
WithProperty!! (
(!!( )
$str!!) 6
,!!6 7
context!!8 ?
.!!? @
HostingEnvironment!!@ R
.!!R S
EnvironmentName!!S b
)!!b c
."" 
Enrich"" 
."" 
WithProperty"" (
(""( )
$str"") 6
,""6 7
context""8 ?
.""? @
HostingEnvironment""@ R
.""R S
ApplicationName""S b
)""b c
.## 
ReadFrom## 
.## 
Configuration## +
(##+ ,
context##, 3
.##3 4
Configuration##4 A
)##A B
;##B C
}$$ 
;$$ 
}%% 
}&& ä 
C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\Common.Logging\LoggingDelegatingHandler.cs
	namespace 	
Common
 
. 
Logging 
{ 
public 

class $
LoggingDelegatingHandler )
:* +
DelegatingHandler, =
{ 
private 
readonly 
ILogger  
<  !$
LoggingDelegatingHandler! 9
>9 :
logger; A
;A B
public $
LoggingDelegatingHandler '
(' (
ILogger( /
</ 0$
LoggingDelegatingHandler0 H
>H I
loggerJ P
)P Q
{ 	
this 
. 
logger 
= 
logger  
;  !
} 	
	protected 
override 
async  
Task! %
<% &
HttpResponseMessage& 9
>9 :
	SendAsync; D
(D E
HttpRequestMessageE W
requestX _
,_ `
CancellationTokena r
cancellationToken	s „
)
„ …
{ 	
try 
{ 
logger 
. 
LogInformation %
(% &
$str& R
,R S
requestT [
.[ \

RequestUri\ f
)f g
;g h
var   
response   
=   
await   $
base  % )
.  ) *
	SendAsync  * 3
(  3 4
request  4 ;
,  ; <
cancellationToken  = N
)  N O
;  O P
if"" 
("" 
response"" 
."" 
IsSuccessStatusCode"" 0
)""0 1
{## 
logger$$ 
.$$ 
LogInformation$$ )
($$) *
$str$$* R
,$$R S
response$$T \
.$$\ ]
RequestMessage$$] k
.$$k l

RequestUri$$l v
)$$v w
;$$w x
}%% 
else&& 
{'' 
logger(( 
.(( 

LogWarning(( %
(((% &
$str((& b
,((b c
()) 
int)) 
))) 
response)) %
.))% &

StatusCode))& 0
,))0 1
response))2 :
.)): ;
RequestMessage)); I
.))I J

RequestUri))J T
)))T U
;))U V
}** 
return,, 
response,, 
;,,  
}-- 
catch.. 
(..  
HttpRequestException.. '
ex..( *
)..* +
when// 
(// 
ex// 
.// 
InnerException// '
is//( *
SocketException//+ :
se//; =
&&//> @
se//A C
.//C D
SocketErrorCode//D S
==//T V
SocketError//W b
.//b c
ConnectionRefused//c t
)//t u
{00 
var11 
hostWithPort11  
=11! "
request11# *
.11* +

RequestUri11+ 5
.115 6
IsDefaultPort116 C
?22 
request22 
.22 

RequestUri22 (
.22( )
DnsSafeHost22) 4
:33 
$"33 
{33 
request33  
.33  !

RequestUri33! +
.33+ ,
DnsSafeHost33, 7
}337 8
$str338 9
{339 :
request33: A
.33A B

RequestUri33B L
.33L M
Port33M Q
}33Q R
"33R S
;33S T
logger55 
.55 
LogCritical55 "
(55" #
ex55# %
,55% &
$str55' W
+55X Y
$str66( b
+66c d
$str77( >
,77> ?
hostWithPort77@ L
)77L M
;77M N
}88 
return:: 
new:: 
HttpResponseMessage:: *
(::* +
HttpStatusCode::+ 9
.::9 :

BadGateway::: D
)::D E
{;; 
RequestMessage<< 
=<<  
request<<! (
}== 
;== 
}>> 	
}?? 
}@@ 