Ì
ÆC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\obj\Debug\net8.0\Registration.Application.AssemblyInfo.cs
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
$str6 P
)P Q
]Q R
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
$str6 P
)P Q
]Q R
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
$str4 N
)N O
]O P
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
]@ A∑
¥C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
Ñ Ö≥
∞C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\obj\Debug\net8.0\Registration.Application.GlobalUsings.g.csÿ
åC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Models\EmailSettings.cs
	namespace 	
Registration
 
. 
Application "
." #
Models# )
{ 
public		 

class		 
EmailSettings		 
{

 
public 
string 
ApiKey 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
FromAddress !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
FromName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} º
ÑC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Models\Email.cs
	namespace 	
Registration
 
. 
Application "
." #
Models# )
{ 
public		 

class		 
Email		 
{

 
public 
string 
To 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ﬁ
¥C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Features\Commands\VerifPhone\VerifyPhoneNumberCommandHandler.cs
	namespace

 	
Registration


 
.

 
Application

 "
.

" #
Features

# +
.

+ ,
Commands

, 4
.

4 5

VerifPhone

5 ?
{ 
public 

class +
VerifyPhoneNumberCommandHandler 0
:1 2
IRequestHandler3 B
<B C$
VerifyPhoneNumberCommandC [
,[ \
Unit] a
>a b
{ 
private 
readonly 
IClientRepository *
_clientRepository+ <
;< =
public +
VerifyPhoneNumberCommandHandler .
(. /
IClientRepository/ @
clientRepositoryA Q
)Q R
{ 	
_clientRepository 
= 
clientRepository  0
;0 1
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& '$
VerifyPhoneNumberCommand' ?
request@ G
,G H
CancellationTokenI Z
cancellationToken[ l
)l m
{ 	
var 
client 
= 
await 
_clientRepository 0
.0 1
GetByIdAsync1 =
(= >
request> E
.E F
ClientIdF N
)N O
;O P
if 
( 
client 
== 
null 
) 
{ 
throw   
new   
	Exception   #
(  # $
$"  $ &
$str  & 5
{  5 6
request  6 =
.  = >
ClientId  > F
}  F G
$str  G R
"  R S
)  S T
;  T U
}!! 
if## 
(## 
!## 
client## 
.## 
IsNumberValid## %
)##% &
{$$ 
client&& 
.&& 
IsNumberValid&& $
=&&% &
true&&' +
;&&+ ,
await(( 
_clientRepository(( '
.((' (
UpdateAsync((( 3
(((3 4
client((4 :
)((: ;
;((; <
}++ 
return,, 
Unit,, 
.,, 
Value,, 
;,, 
}-- 	
}.. 
}// Å
≠C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Features\Commands\VerifPhone\VerifyPhoneNumberCommand.cs
	namespace

 	
Registration


 
.

 
Application

 "
.

" #
Features

# +
.

+ ,
Commands

, 4
.

4 5

VerifPhone

5 ?
{ 
public 

class $
VerifyPhoneNumberCommand )
:* +
IRequest, 4
<4 5
Unit5 9
>9 :
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class -
!VerifyPhoneNumberCommandValidator 2
:3 4
AbstractValidator5 F
<F G$
VerifyPhoneNumberCommandG _
>_ `
{ 
public -
!VerifyPhoneNumberCommandValidator 0
(0 1
)1 2
{ 	
RuleFor 
( 
x 
=> 
x 
. 
ClientId #
)# $
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( ?
)? @
;@ A
} 	
} 
} ∑
ÆC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Features\Commands\VerifEmail\VerifyEmailCommandHandler.cs
	namespace

 	
Registration


 
.

 
Application

 "
.

" #
Features

# +
.

+ ,
Commands

, 4
.

4 5

VerifEmail

5 ?
{ 
public 

class %
VerifyEmailCommandHandler *
:+ ,
IRequestHandler- <
<< =
VerifyEmailCommand= O
,O P
UnitQ U
>U V
{ 
private 
readonly 
IClientRepository *
_clientRepository+ <
;< =
private 
readonly 
IModel 
_channel  (
;( )
public %
VerifyEmailCommandHandler (
(( )
IClientRepository) :
clientRepository; K
,K L
RabbitMQServiceM \
rabbitMQService] l
)l m
{ 	
_clientRepository 
= 
clientRepository  0
;0 1
_channel 
= 
rabbitMQService &
.& '

GetChannel' 1
(1 2
)2 3
;3 4
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& '
VerifyEmailCommand' 9
request: A
,A B
CancellationTokenC T
cancellationTokenU f
)f g
{ 	
var 
client 
= 
await 
_clientRepository 0
.0 1
GetByIdAsync1 =
(= >
request> E
.E F
ClientIdF N
)N O
;O P
if 
( 
client 
== 
null 
) 
{ 
throw 
new 
	Exception #
(# $
$"$ &
$str& 5
{5 6
request6 =
.= >
ClientId> F
}F G
$strG R
"R S
)S T
;T U
} 
if!! 
(!! 
!!! 
client!! 
.!! 
IsEmailValid!! $
)!!$ %
{"" 
client$$ 
.$$ 
IsEmailValid$$ #
=$$$ %
true$$& *
;$$* +
await&& 
_clientRepository&& '
.&&' (
UpdateAsync&&( 3
(&&3 4
client&&4 :
)&&: ;
;&&; <
var)) 
message)) 
=)) 
$"))  
{))  !
client))! '
.))' (
PhoneNumber))( 3
}))3 4
$str))4 5
{))5 6
client))6 <
.))< =
Id))= ?
}))? @
"))@ A
;))A B
var** 
body** 
=** 
Encoding** #
.**# $
UTF8**$ (
.**( )
GetBytes**) 1
(**1 2
message**2 9
)**9 :
;**: ;
_channel++ 
.++ 
BasicPublish++ %
(++% &
exchange++& .
:++. /
$str++0 2
,++2 3

routingKey++4 >
:++> ?
$str++@ X
,++X Y
basicProperties++Z i
:++i j
null++k o
,++o p
body++q u
:++u v
body++w {
)++{ |
;++| }
Console,, 
.,, 
	WriteLine,, !
(,,! "
$",," $
$str,,$ 2
{,,2 3
message,,3 :
},,: ;
",,; <
),,< =
;,,= >
}-- 
return.. 
Unit.. 
... 
Value.. 
;.. 
}// 	
}00 
}11 „

ßC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Features\Commands\VerifEmail\VerifyEmailCommand.cs
	namespace		 	
Registration		
 
.		 
Application		 "
.		" #
Features		# +
.		+ ,
Commands		, 4
.		4 5

VerifEmail		5 ?
{

 
public 

class 
VerifyEmailCommand #
:$ %
IRequest& .
<. /
Unit/ 3
>3 4
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class '
VerifyEmailCommandValidator ,
:- .
AbstractValidator/ @
<@ A
VerifyEmailCommandA S
>S T
{ 
public '
VerifyEmailCommandValidator *
(* +
)+ ,
{ 	
RuleFor 
( 
x 
=> 
x 
. 
ClientId #
)# $
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( ?
)? @
;@ A
} 	
} 
} Â/
™C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Features\Commands\ClientRegistrationCommandHandler.cs
	namespace 	
Registration
 
. 
Application "
." #
Features# +
.+ ,
Commands, 4
{ 
public 

class ,
 ClientRegistrationCommandHandler 1
:2 3
IRequestHandler4 C
<C D%
ClientRegistrationCommandD ]
,] ^
Unit_ c
>c d
{ 
private 
readonly 
IClientRepository *
_clientRepository+ <
;< =
private 
readonly 
IModel 
_channel  (
;( )
public ,
 ClientRegistrationCommandHandler /
(/ 0
IClientRepository0 A
clientRepositoryB R
,R S
RabbitMQServiceT c
rabbitMQServiced s
)s t
{ 	
_clientRepository 
= 
clientRepository  0
;0 1
_channel 
= 
rabbitMQService &
.& '

GetChannel' 1
(1 2
)2 3
;3 4
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& '%
ClientRegistrationCommand' @
requestA H
,H I
CancellationTokenJ [
cancellationToken\ m
)m n
{ 	
var 
client 
= 
new 
Client #
{ 
Civility   
=   
request   "
.  " #
Civility  # +
,  + ,
	FirstName!! 
=!! 
request!! #
.!!# $
	FirstName!!$ -
,!!- .
LastName"" 
="" 
request"" "
.""" #
LastName""# +
,""+ ,
PhoneNumber## 
=## 
request## %
.##% &
PhoneNumber##& 1
,##1 2
Email$$ 
=$$ 
request$$ 
.$$  
Email$$  %
,$$% &
DateOfBirth%% 
=%% 
request%% %
.%%% &
DateOfBirth%%& 1
,%%1 2
Address&& 
=&& 
new&& 
Address&& %
{'' 
Country(( 
=(( 
request(( %
.((% &
Address((& -
.((- .
Country((. 5
,((5 6

Governance)) 
=))  
request))! (
.))( )
Address))) 0
.))0 1

Governance))1 ;
,)); <
City** 
=** 
request** "
.**" #
Address**# *
.*** +
City**+ /
,**/ 0

PostalCode++ 
=++  
request++! (
.++( )
Address++) 0
.++0 1

PostalCode++1 ;
,++; <
Number,, 
=,, 
request,, $
.,,$ %
Address,,% ,
.,,, -
Number,,- 3
,,,3 4
Street-- 
=-- 
request-- $
.--$ %
Address--% ,
.--, -
Street--- 3
}.. 
}// 
;// 
await11 
_clientRepository11 #
.11# $
AddAsync11$ ,
(11, -
client11- 3
)113 4
;114 5
var44 
message44 
=44 
$"44 
{44 
client44 #
.44# $
Email44$ )
}44) *
$str44* +
{44+ ,
client44, 2
.442 3
Id443 5
}445 6
"446 7
;447 8
var55 
body55 
=55 
Encoding55 
.55  
UTF855  $
.55$ %
GetBytes55% -
(55- .
message55. 5
)555 6
;556 7
_channel66 
.66 
BasicPublish66 !
(66! "
exchange66" *
:66* +
$str66, .
,66. /

routingKey660 :
:66: ;
$str66< P
,66P Q
basicProperties66R a
:66a b
null66c g
,66g h
body66i m
:66m n
body66o s
)66s t
;66t u
Console77 
.77 
	WriteLine77 
(77 
$"77  
$str77  .
{77. /
message77/ 6
}776 7
"777 8
)778 9
;779 :
return99 
Unit99 
.99 
Value99 
;99 
}:: 	
};; 
public== 

class== 
RabbitMQService==  
:==! "
IDisposable==# .
{>> 
private?? 
readonly?? 
IModel?? 
_channel??  (
;??( )
publicAA 
RabbitMQServiceAA 
(AA 
)AA  
{BB 	
varCC 
factoryCC 
=CC 
newCC 
ConnectionFactoryCC /
{DD 
HostNameEE 
=EE 
$strEE %
,EE% &
UserNameFF 
=FF 
$strFF "
,FF" #
PasswordGG 
=GG 
$strGG "
}HH 
;HH 
varII 

connectionII 
=II 
factoryII $
.II$ %
CreateConnectionII% 5
(II5 6
)II6 7
;II7 8
_channelJJ 
=JJ 

connectionJJ !
.JJ! "
CreateModelJJ" -
(JJ- .
)JJ. /
;JJ/ 0
}KK 	
publicMM 
voidMM 
DisposeMM 
(MM 
)MM 
{NN 	
_channelOO 
?OO 
.OO 
DisposeOO 
(OO 
)OO 
;OO  
}PP 	
publicRR 
IModelRR 

GetChannelRR  
(RR  !
)RR! "
=>RR# %
_channelRR& .
;RR. /
}SS 
}TT ‹B
£C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Features\Commands\ClientRegistrationCommand.cs
	namespace

 	
Registration


 
.

 
Application

 "
.

" #
Features

# +
.

+ ,
Commands

, 4
{ 
public 

class %
ClientRegistrationCommand *
:+ ,
IRequest- 5
<5 6
Unit6 :
>: ;
{ 
public 
string 
Civility 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
IsEmailValid "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
IsNumberValid #
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
Address 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class .
"ClientRegistrationCommandValidator 3
:4 5
AbstractValidator6 G
<G H%
ClientRegistrationCommandH a
>a b
{ 
public .
"ClientRegistrationCommandValidator 1
(1 2
)2 3
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Civility #
)# $
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( ?
)? @
;@ A
RuleFor!! 
(!! 
x!! 
=>!! 
x!! 
.!! 
	FirstName!! $
)!!$ %
."" 
NotEmpty"" 
("" 
)"" 
."" 
WithMessage"" '
(""' (
$str""( A
)""A B
.## 
MaximumLength## 
(## 
$num## !
)##! "
.##" #
WithMessage### .
(##. /
$str##/ `
)##` a
;##a b
RuleFor%% 
(%% 
x%% 
=>%% 
x%% 
.%% 
LastName%% #
)%%# $
.&& 
NotEmpty&& 
(&& 
)&& 
.&& 
WithMessage&& '
(&&' (
$str&&( @
)&&@ A
.'' 
MaximumLength'' 
('' 
$num'' !
)''! "
.''" #
WithMessage''# .
(''. /
$str''/ _
)''_ `
;''` a
RuleFor)) 
()) 
x)) 
=>)) 
x)) 
.)) 
PhoneNumber)) &
)))& '
.** 
NotEmpty** 
(** 
)** 
.** 
WithMessage** '
(**' (
$str**( C
)**C D
.++ 
Matches++ 
(++ 
$str++ $
)++$ %
.++% &
WithMessage++& 1
(++1 2
$str++2 N
)++N O
;++O P
RuleFor-- 
(-- 
x-- 
=>-- 
x-- 
.-- 
Email--  
)--  !
... 
NotEmpty.. 
(.. 
).. 
... 
WithMessage.. '
(..' (
$str..( <
)..< =
.// 
EmailAddress// 
(// 
)// 
.//  
WithMessage//  +
(//+ ,
$str//, A
)//A B
;//B C
RuleFor11 
(11 
x11 
=>11 
x11 
.11 
IsEmailValid11 '
)11' (
.22 
Must22 
(22 
x22 
=>22 
x22 
==22 
$str22  &
||22' )
x22* +
==22, .
$str22/ 6
)226 7
.33 
WithMessage33 
(33 
$str33 F
)33F G
;33G H
RuleFor55 
(55 
x55 
=>55 
x55 
.55 
IsNumberValid55 (
)55( )
.66 
Must66 
(66 
x66 
=>66 
x66 
==66 
$str66  &
||66' )
x66* +
==66, .
$str66/ 6
)666 7
.77 
WithMessage77 
(77 
$str77 G
)77G H
;77H I
RuleFor99 
(99 
x99 
=>99 
x99 
.99 
DateOfBirth99 &
)99& '
.:: 
LessThan:: 
(:: 
DateTime:: "
.::" #
Now::# &
)::& '
.::' (
WithMessage::( 3
(::3 4
$str::4 X
)::X Y
;::Y Z
RuleFor<< 
(<< 
x<< 
=><< 
x<< 
.<< 
Address<< "
)<<" #
.== 
NotNull== 
(== 
)== 
.== 
WithMessage== &
(==& '
$str==' =
)=== >
.>> 
SetValidator>> 
(>> 
new>> !
AddressValidator>>" 2
(>>2 3
)>>3 4
)>>4 5
;>>5 6
}?? 	
}@@ 
publicBB 

classBB 
AddressValidatorBB !
:BB" #
AbstractValidatorBB$ 5
<BB5 6
AddressBB6 =
>BB= >
{CC 
publicDD 
AddressValidatorDD 
(DD  
)DD  !
{EE 	
RuleForFF 
(FF 
xFF 
=>FF 
xFF 
.FF 
CountryFF "
)FF" #
.GG 
NotEmptyGG 
(GG 
)GG 
.GG 
WithMessageGG '
(GG' (
$strGG( >
)GG> ?
;GG? @
RuleForII 
(II 
xII 
=>II 
xII 
.II 

GovernanceII %
)II% &
.JJ 
NotEmptyJJ 
(JJ 
)JJ 
.JJ 
WithMessageJJ '
(JJ' (
$strJJ( A
)JJA B
;JJB C
RuleForLL 
(LL 
xLL 
=>LL 
xLL 
.LL 
CityLL 
)LL  
.MM 
NotEmptyMM 
(MM 
)MM 
.MM 
WithMessageMM '
(MM' (
$strMM( ;
)MM; <
;MM< =
RuleForOO 
(OO 
xOO 
=>OO 
xOO 
.OO 

PostalCodeOO %
)OO% &
.PP 
NotEmptyPP 
(PP 
)PP 
.PP 
WithMessagePP '
(PP' (
$strPP( B
)PPB C
.QQ 
MatchesQQ 
(QQ 
$strQQ ,
)QQ, -
.QQ- .
WithMessageQQ. 9
(QQ9 :
$strQQ: U
)QQU V
;QQV W
RuleForSS 
(SS 
xSS 
=>SS 
xSS 
.SS 
NumberSS !
)SS! "
.TT 
NotEmptyTT 
(TT 
)TT 
.TT 
WithMessageTT '
(TT' (
$strTT( =
)TT= >
;TT> ?
RuleForVV 
(VV 
xVV 
=>VV 
xVV 
.VV 
StreetVV !
)VV! "
.WW 
NotEmptyWW 
(WW 
)WW 
.WW 
WithMessageWW '
(WW' (
$strWW( =
)WW= >
;WW> ?
}XX 	
}YY 
}[[ ÷
üC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Contracts\Persistence\IClientRepository.cs
	namespace 	
Registration
 
. 
Application "
." #
	Contracts# ,
., -
Persistence- 8
{		 
public

 

	interface

 
IClientRepository

 &
:

' (
IAsyncRepository

) 9
<

9 :
Client

: @
>

@ A
{ 
Task 
< 
bool 
> 

UserExists 
( 
string $
email% *
)* +
;+ ,
} 
} Û
ûC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Contracts\Infrastructure\IEmailService.cs
	namespace 	
Registration
 
. 
Application "
." #
	Contracts# ,
., -
Infrastructure- ;
{		 
public

 

	interface

 
IEmailService

 "
{ 
Task 
< 
bool 
> 
	SendEmail 
( 
Email "
email# (
)( )
;) *
} 
} Á
ûC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Contracts\Persistence\IAsyncRepository.cs
	namespace		 	
Registration		
 
.		 
Application		 "
.		" #
	Contracts		# ,
.		, -
Persistence		- 8
{

 
public 

	interface 
IAsyncRepository %
<% &
T& '
>' (
where) .
T/ 0
:1 2

EntityBase3 =
{ 
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAllAsync *
(* +
)+ ,
;, -
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
>@ A
	predicateB K
)K L
;L M
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAsync '
(' (

Expression( 2
<2 3
Func3 7
<7 8
T8 9
,9 :
bool; ?
>? @
>@ A
?A B
	predicateC L
=M N
nullO S
,S T
Func( ,
<, -

IQueryable- 7
<7 8
T8 9
>9 :
,: ;
IOrderedQueryable< M
<M N
TN O
>O P
>P Q
?Q R
orderByS Z
=[ \
null] a
,a b
string( .
?. /
includeString0 =
=> ?
null@ D
,D E
bool( ,
disableTracking- <
== >
true? C
)C D
;D E
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAsync '
(' (

Expression( 2
<2 3
Func3 7
<7 8
T8 9
,9 :
bool; ?
>? @
>@ A
?A B
	predicateC L
=M N
nullO S
,S T
Func' +
<+ ,

IQueryable, 6
<6 7
T7 8
>8 9
,9 :
IOrderedQueryable; L
<L M
TM N
>N O
>O P
?P Q
orderByR Y
=Z [
null\ `
,` a
List' +
<+ ,

Expression, 6
<6 7
Func7 ;
<; <
T< =
,= >
object? E
>E F
>F G
>G H
?H I
includesJ R
=S T
nullU Y
,Y Z
bool' +
disableTracking, ;
=< =
true> B
)B C
;C D
Task 
< 
T 
> 
GetByIdAsync 
( 
Guid !
id" $
)$ %
;% &
Task 
< 
T 
> 
AddAsync 
( 
T 
entity !
)! "
;" #
Task 
UpdateAsync 
( 
T 
entity !
)! "
;" #
Task 
DeleteAsync 
( 
T 
entity !
)! "
;" #
} 
} Ì
ñC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Behaviours\ValidationBehaviour.cs
	namespace		 	
Registration		
 
.		 
Application		 "
.		" #

Behaviours		# -
{

 
public 

class 
ValidationBehaviour $
<$ %
TRequest% -
,- .
	TResponse/ 8
>8 9
:: ;
IPipelineBehavior< M
<M N
TRequestN V
,V W
	TResponseX a
>a b
wherec h
TRequesti q
:r s
IRequestt |
<| }
	TResponse	} Ü
>
Ü á
{ 
private 
readonly 
IEnumerable $
<$ %

IValidator% /
</ 0
TRequest0 8
>8 9
>9 :
_validators; F
;F G
public 
ValidationBehaviour "
(" #
IEnumerable# .
<. /

IValidator/ 9
<9 :
TRequest: B
>B C
>C D

validatorsE O
)O P
{ 	
_validators 
= 

validators $
;$ %
} 	
public 
async 
Task 
< 
	TResponse #
># $
Handle% +
(+ ,
TRequest, 4
request5 <
,< ="
RequestHandlerDelegate> T
<T U
	TResponseU ^
>^ _
next` d
,d e
CancellationTokenf w
cancellationToken	x â
)
â ä
{ 	
if 
( 
_validators 
. 
Any 
(  
)  !
)! "
{ 
var 
context 
= 
new !
ValidationContext" 3
<3 4
TRequest4 <
>< =
(= >
request> E
)E F
;F G
var 
validationResults %
=& '
await( -
Task. 2
.2 3
WhenAll3 :
(: ;
_validators; F
.F G
SelectG M
(M N
vN O
=>P R
vS T
.T U
ValidateAsyncU b
(b c
contextc j
,j k
cancellationTokenl }
)} ~
)~ 
)	 Ä
;
Ä Å
var 
failures 
= 
validationResults 0
.0 1

SelectMany1 ;
(; <
r< =
=>> @
rA B
.B C
ErrorsC I
)I J
.J K
WhereK P
(P Q
fQ R
=>S U
fV W
!=X Z
null[ _
)_ `
.` a
ToLista g
(g h
)h i
;i j
if!! 
(!! 
failures!! 
.!! 
Count!! "
!=!!# %
$num!!& '
)!!' (
throw"" 
new"" 
ValidationException"" 1
(""1 2
failures""2 :
)"": ;
;""; <
}## 
return$$ 
await$$ 
next$$ 
($$ 
)$$ 
;$$  
}%% 	
}&& 
}'' ¬
ûC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Application\Behaviours\UnhandledExceptionBehaviour.cs
	namespace		 	
Registration		
 
.		 
Application		 "
.		" #

Behaviours		# -
{

 
public 

class '
UnhandledExceptionBehaviour ,
<, -
TRequest- 5
,5 6
	TResponse7 @
>@ A
:B C
IPipelineBehaviorD U
<U V
TRequestV ^
,^ _
	TResponse` i
>i j
wherek p
TRequestq y
:z {
IRequest	| Ñ
<
Ñ Ö
	TResponse
Ö é
>
é è
{ 
private 
readonly 
ILogger  
<  !
TRequest! )
>) *
_logger+ 2
;2 3
public '
UnhandledExceptionBehaviour *
(* +
ILogger+ 2
<2 3
TRequest3 ;
>; <
logger= C
)C D
{ 	
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
	TResponse #
># $
Handle% +
(+ ,
TRequest, 4
request5 <
,< ="
RequestHandlerDelegate> T
<T U
	TResponseU ^
>^ _
next` d
,d e
CancellationTokenf w
cancellationToken	x â
)
â ä
{ 	
try 
{ 
return 
await 
next !
(! "
)" #
;# $
} 
catch 
( 
	Exception 
ex 
)  
{ 
var 
requestName 
=  !
typeof" (
(( )
TRequest) 1
)1 2
.2 3
Name3 7
;7 8
_logger 
. 
LogError  
(  !
ex! #
,# $
$str% m
,m n
requestNameo z
,z {
request	| É
)
É Ñ
;
Ñ Ö
throw   
;   
}!! 
}"" 	
}## 
}$$ 