Þ
ªC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Email\EmailService.API\obj\Debug\net8.0\EmailService.API.MvcApplicationPartsAssemblyInfo.cs
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
]r sÖ
—C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Email\EmailService.API\obj\Debug\net8.0\EmailService.API.AssemblyInfo.cs
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
]@ A¨
¥C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Email\EmailService.API\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
„ …œ
™C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Email\EmailService.API\obj\Debug\net8.0\EmailService.API.GlobalUsings.g.cs²
pC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Email\EmailService.API\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Host 
. 

UseSerilog 
( 

SeriLogger "
." #
	Configure# ,
), -
;- .
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder 
. 
Services 
. 
AddSingleton 
< $
EmailVerificationService 6
>6 7
(7 8
)8 9
;: ;
builder 
. 
Services 
. 
AddHealthChecks  
(  !
)! "
;" #
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app   
.   $
UseSerilogRequestLogging   
(   
)   
;   
var## $
emailVerificationService## 
=## 
app## "
.##" #
Services### +
.##+ ,
GetRequiredService##, >
<##> ?$
EmailVerificationService##? W
>##W X
(##X Y
)##Y Z
;##Z ["
emailVerificationService&& 
.&& 
StartListening&& '
(&&' (
numOfConsumers&&( 6
:&&6 7
$num&&8 9
)&&9 :
;&&: ;
app(( 
.(( 
MapControllers(( 
((( 
)(( 
;(( 
app** 
.** 
MapHealthChecks** 
(** 
$str** 
,** 
new** 
HealthCheckOptions** 1
(**1 2
)**2 3
{++ 
	Predicate,, 
=,, 
_,, 
=>,, 
true,, 
,,, 
ResponseWriter-- 
=-- 
UIResponseWriter-- %
.--% &&
WriteHealthCheckUIResponse--& @
}.. 
).. 
;.. 
app00 
.00 
Run00 
(00 
)00 	
;00	 
­A
‚C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Email\EmailService.API\EmailVeerificationService.cs
	namespace 	
EmailService
 
. 
API 
{		 
public

 

class

 $
EmailVerificationService

 )
{ 
private 
readonly 
IConnection $
_connection% 0
;0 1
private 
readonly 
IModel 
_channel  (
;( )
public $
EmailVerificationService '
(' (
)( )
{ 	
var 
factory 
= 
new 
ConnectionFactory /
(/ 0
)0 1
{2 3
HostName 
= 
$str %
,% &
UserName 
= 
$str "
," #
Password 
= 
$str "
} 
; 
_connection 
= 
factory !
.! "
CreateConnection" 2
(2 3
)3 4
;4 5
_channel 
= 
_connection "
." #
CreateModel# .
(. /
)/ 0
;0 1
_channel 
. 
QueueDeclare !
(! "
queue" '
:' (
$str) =
,= >
durable? F
:F G
trueH L
,L M
	exclusiveN W
:W X
falseY ^
,^ _

autoDelete` j
:j k
falsel q
,q r
	argumentss |
:| }
null	~ ‚
)
‚ ƒ
;
ƒ „
} 	
public 
void 
StartListening "
(" #
int# &
numOfConsumers' 5
)5 6
{ 	
for 
( 
int 
i 
= 
$num 
; 
i 
< 
numOfConsumers  .
;. /
i0 1
++1 3
)3 4
{ 
Task 
. 
Factory 
. 
StartNew %
(% &
(& '
)' (
=>) +
ConsumeMessages, ;
(; <
)< =
)= >
;> ?
}   
}!! 	
private## 
void## 
ConsumeMessages## $
(##$ %
)##% &
{$$ 	
var%% 
consumer%% 
=%% 
new%% !
EventingBasicConsumer%% 4
(%%4 5
_channel%%5 =
)%%= >
;%%> ?
_channel'' 
.'' 
BasicQos'' 
('' 
prefetchSize'' *
:''* +
$num'', -
,''- .
prefetchCount''/ <
:''< =
$num''> @
,''@ A
global''B H
:''H I
false''J O
)''O P
;''P Q
consumer)) 
.)) 
Received)) 
+=))  
async))! &
())' (
model))( -
,))- .
ea))/ 1
)))1 2
=>))3 5
{** 
var++ 
body++ 
=++ 
ea++ 
.++ 
Body++ "
.++" #
ToArray++# *
(++* +
)+++ ,
;++, -
var,, 
message,, 
=,, 
System,, $
.,,$ %
Text,,% )
.,,) *
Encoding,,* 2
.,,2 3
UTF8,,3 7
.,,7 8
	GetString,,8 A
(,,A B
body,,B F
),,F G
;,,G H
Console-- 
.-- 
	WriteLine-- !
(--! "
$"--" $
$str--$ 6
{--6 7
message--7 >
}--> ?
"--? @
)--@ A
;--A B
string.. 
[.. 
].. 
messages.. !
=.." #
message..$ +
...+ ,
Split.., 1
(..1 2
$char..2 5
)..5 6
;..6 7
await00 
Task00 
.00 
Run00 
(00 
(00  
)00  !
=>00" $!
SendVerificationEmail00% :
(00: ;
messages00; C
)00C D
)00D E
;00E F
_channel22 
.22 
BasicAck22 !
(22! "
ea22" $
.22$ %
DeliveryTag22% 0
,220 1
false222 7
)227 8
;228 9
}33 
;33 
_channel55 
.55 
BasicConsume55 !
(55! "
queue55" '
:55' (
$str55) =
,55= >
autoAck55? F
:55F G
false55H M
,55M N
consumer55O W
:55W X
consumer55Y a
)55a b
;55b c
Console66 
.66 
	WriteLine66 
(66 
$str66 7
)667 8
;668 9
}77 	
private99 
void99 !
SendVerificationEmail99 *
(99* +
string99+ 1
[991 2
]992 3
messages994 <
)99< =
{:: 	
try;; 
{<< 
var== 
fromAddress== 
===  !
new==" %
MailAddress==& 1
(==1 2
$str==2 G
,==G H
$str==I U
)==U V
;==V W
var>> 
	toAddress>> 
=>> 
new>>  #
MailAddress>>$ /
(>>/ 0
messages>>0 8
[>>8 9
$num>>9 :
]>>: ;
)>>; <
;>>< =
const?? 
string?? 
fromPassword?? )
=??* +
$str??, >
;??> ?
const@@ 
string@@ 
subject@@ $
=@@% &
$str@@' ;
;@@; <
stringAA 
bodyAA 
=AA 
$"AA  
$str	AA  ‹
{
AA‹ Œ
messages
AAŒ ”
[
AA” •
$num
AA• –
]
AA– —
}
AA— ˜
"
AA˜ ™
;
AA™ š
usingCC 
varCC 
messageCC !
=CC" #
newCC$ '
MailMessageCC( 3
(CC3 4
fromAddressCC4 ?
,CC? @
	toAddressCCA J
)CCJ K
{DD 
SubjectEE 
=EE 
subjectEE %
,EE% &
BodyFF 
=FF 
bodyFF 
}GG 
;GG 
usingII 
varII 
smtpII 
=II  
newII! $

SmtpClientII% /
{JJ 
HostKK 
=KK 
$strKK +
,KK+ ,
PortLL 
=LL 
$numLL 
,LL 
	EnableSslMM 
=MM 
trueMM  $
,MM$ %
DeliveryMethodNN "
=NN# $
SmtpDeliveryMethodNN% 7
.NN7 8
NetworkNN8 ?
,NN? @!
UseDefaultCredentialsOO )
=OO* +
falseOO, 1
,OO1 2
CredentialsPP 
=PP  !
newPP" %
SystemPP& ,
.PP, -
NetPP- 0
.PP0 1
NetworkCredentialPP1 B
(PPB C
$strPPC X
,PPX Y
fromPasswordPPZ f
)PPf g
}QQ 
;QQ 
smtpSS 
.SS 
SendSS 
(SS 
messageSS !
)SS! "
;SS" #
ConsoleTT 
.TT 
	WriteLineTT !
(TT! "
$strTT" I
)TTI J
;TTJ K
LogUU 
.UU 
InformationUU 
(UU  
$"UU  "
$strUU" 0
{UU0 1
	toAddressUU1 :
}UU: ;
"UU; <
)UU< =
;UU= >
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
ConsoleYY 
.YY 
	WriteLineYY !
(YY! "
$"YY" $
$strYY$ F
{YYF G
exYYG I
.YYI J
MessageYYJ Q
}YYQ R
"YYR S
)YYS T
;YYT U
LogZZ 
.ZZ 
ErrorZZ 
(ZZ 
$"ZZ 
$strZZ C
{ZZC D
exZZD F
.ZZF G
MessageZZG N
}ZZN O
"ZZO P
)ZZP Q
;ZZQ R
}[[ 
}\\ 	
}bb 
}cc 