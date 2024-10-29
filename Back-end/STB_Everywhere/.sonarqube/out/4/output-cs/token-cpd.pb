‹
®C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\obj\Debug\net8.0\Signature.API.MvcApplicationPartsAssemblyInfo.cs
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
]r sà
ïC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\obj\Debug\net8.0\Signature.API.AssemblyInfo.cs
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
$str6 E
)E F
]F G
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
$str6 E
)E F
]F G
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
$str4 C
)C D
]D E
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
]@ A©
¶C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
Ñ Öö
óC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\obj\Debug\net8.0\Signature.API.GlobalUsings.g.csöS
èC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Signatures\GetClientInfo\PdfGenerator.cs
	namespace 	
	Signature
 
. 
API 
. 

Signatures "
." #
GetClientInfo# 0
{ 
public 

static 
class 
PdfGenerator $
{ 
public 
static 
byte 
[ 
] 
GeneratePdf (
(( )
ClientDetails) 6
clientDetails7 D
)D E
{		 	
using

 
var

 
stream

 
=

 
new

 "
MemoryStream

# /
(

/ 0
)

0 1
;

1 2
var 
document 
= 
new 
Document '
(' (
)( )
;) *
	PdfWriter 
. 
GetInstance !
(! "
document" *
,* +
stream, 2
)2 3
;3 4
document 
. 
Open 
( 
) 
; 
string 
	imagePath 
= 
Path #
.# $
GetFullPath$ /
(/ 0
$str0 T
)T U
;U V
Image 
img 
= 
Image 
. 
GetInstance )
() *
	imagePath* 3
)3 4
;4 5
img 
. 
	Alignment 
= 
Image !
.! "
ALIGN_CENTER" .
;. /
img 
. 

ScaleToFit 
( 
$num 
,  
$num! %
)% &
;& '
document 
. 
Add 
( 
img 
) 
; 
document 
. 
Add 
( 
new 
	Paragraph &
(& '
$str' <
)< =
{ 
	Alignment 
= 
Element #
.# $
ALIGN_CENTER$ 0
,0 1
Font 
= 
FontFactory "
." #
GetFont# *
(* +
FontFactory+ 6
.6 7
TIMES_ROMAN7 B
,B C
$numD F
,F G
FontH L
.L M
BOLDM Q
)Q R
} 
) 
; 
document 
. 
Add 
( 
new 
	Paragraph &
(& '
$"' )
$str) 3
{3 4
clientDetails4 A
.A B
ClientB H
.H I
CivilityI Q
}Q R
"R S
)S T
)T U
;U V
document 
. 
Add 
( 
new 
	Paragraph &
(& '
$"' )
$str) /
{/ 0
clientDetails0 =
.= >
Client> D
.D E
	FirstNameE N
}N O
$strO P
{P Q
clientDetailsQ ^
.^ _
Client_ e
.e f
LastNamef n
}n o
"o p
)p q
)q r
;r s
document 
. 
Add 
( 
new 
	Paragraph &
(& '
$"' )
$str) 0
{0 1
clientDetails1 >
.> ?
Client? E
.E F
PhoneNumberF Q
}Q R
"R S
)S T
)T U
;U V
document 
. 
Add 
( 
new 
	Paragraph &
(& '
$"' )
$str) 0
{0 1
clientDetails1 >
.> ?
Client? E
.E F
EmailF K
}K L
$strL U
{U V
clientDetailsV c
.c d
Clientd j
.j k
IsEmailValidk w
}w x
$strx y
"y z
)z {
){ |
;| }
document   
.   
Add   
(   
new   
	Paragraph   &
(  & '
$"  ' )
$str  ) 8
{  8 9
clientDetails  9 F
.  F G
Client  G M
.  M N
DateOfBirth  N Y
.  Y Z
ToShortDateString  Z k
(  k l
)  l m
}  m n
"  n o
)  o p
)  p q
;  q r
document!! 
.!! 
Add!! 
(!! 
new!! 
	Paragraph!! &
(!!& '
$str!!' 1
)!!1 2
)!!2 3
;!!3 4
document"" 
."" 
Add"" 
("" 
new"" 
	Paragraph"" &
(""& '
$"""' )
$str"") +
{""+ ,
clientDetails"", 9
.""9 :
Client"": @
.""@ A
Address""A H
.""H I
Number""I O
}""O P
$str""P Q
{""Q R
clientDetails""R _
.""_ `
Client""` f
.""f g
Address""g n
.""n o
Street""o u
}""u v
"""v w
)""w x
)""x y
;""y z
document## 
.## 
Add## 
(## 
new## 
	Paragraph## &
(##& '
$"##' )
$str##) +
{##+ ,
clientDetails##, 9
.##9 :
Client##: @
.##@ A
Address##A H
.##H I
City##I M
}##M N
$str##N P
{##P Q
clientDetails##Q ^
.##^ _
Client##_ e
.##e f
Address##f m
.##m n

PostalCode##n x
}##x y
"##y z
)##z {
)##{ |
;##| }
document$$ 
.$$ 
Add$$ 
($$ 
new$$ 
	Paragraph$$ &
($$& '
$"$$' )
$str$$) +
{$$+ ,
clientDetails$$, 9
.$$9 :
Client$$: @
.$$@ A
Address$$A H
.$$H I

Governance$$I S
}$$S T
$str$$T V
{$$V W
clientDetails$$W d
.$$d e
Client$$e k
.$$k l
Address$$l s
.$$s t
Country$$t {
}$${ |
"$$| }
)$$} ~
)$$~ 
;	$$ Ä
document'' 
.'' 
Add'' 
('' 
new'' 
	Paragraph'' &
(''& '
$str''' B
)''B C
)''C D
;''D E
document(( 
.(( 
Add(( 
((( 
new(( 
	Paragraph(( &
(((& '
$"((' )
$str(() 6
{((6 7
clientDetails((7 D
.((D E
AccountCreation((E T
.((T U
Nationality((U `
}((` a
"((a b
)((b c
)((c d
;((d e
document)) 
.)) 
Add)) 
()) 
new)) 
	Paragraph)) &
())& '
$"))' )
$str))) <
{))< =
clientDetails))= J
.))J K
AccountCreation))K Z
.))Z [
OtherNationality))[ k
}))k l
"))l m
)))m n
)))n o
;))o p
document** 
.** 
Add** 
(** 
new** 
	Paragraph** &
(**& '
$"**' )
$str**) 6
{**6 7
clientDetails**7 D
.**D E
AccountCreation**E T
.**T U

CivilState**U _
}**_ `
"**` a
)**a b
)**b c
;**c d
document++ 
.++ 
Add++ 
(++ 
new++ 
	Paragraph++ &
(++& '
$"++' )
$str++) >
{++> ?
clientDetails++? L
.++L M
AccountCreation++M \
.++\ ]
ProfessionalStatus++] o
}++o p
"++p q
)++q r
)++r s
;++s t
document,, 
.,, 
Add,, 
(,, 
new,, 
	Paragraph,, &
(,,& '
$",,' )
$str,,) :
{,,: ;
clientDetails,,; H
.,,H I
AccountCreation,,I X
.,,X Y
ActivityNature,,Y g
},,g h
",,h i
),,i j
),,j k
;,,k l
document-- 
.-- 
Add-- 
(-- 
new-- 
	Paragraph-- &
(--& '
$"--' )
$str--) >
{--> ?
clientDetails--? L
.--L M
AccountCreation--M \
.--\ ]
FieldOfProfession--] n
}--n o
"--o p
)--p q
)--q r
;--r s
document.. 
... 
Add.. 
(.. 
new.. 
	Paragraph.. &
(..& '
$"..' )
$str..) 5
{..5 6
clientDetails..6 C
...C D
AccountCreation..D S
...S T
	NetIncome..T ]
}..] ^
"..^ _
).._ `
)..` a
;..a b
document// 
.// 
Add// 
(// 
new// 
	Paragraph// &
(//& '
$"//' )
$str//) 7
{//7 8
clientDetails//8 E
.//E F
AccountCreation//F U
.//U V
OtherIncome//V a
}//a b
"//b c
)//c d
)//d e
;//e f
document00 
.00 
Add00 
(00 
new00 
	Paragraph00 &
(00& '
$"00' )
$str00) K
{00K L
clientDetails00L Y
.00Y Z
AccountCreation00Z i
.00i j
PPE00j m
}00m n
"00n o
)00o p
)00p q
;00q r
document11 
.11 
Add11 
(11 
new11 
	Paragraph11 &
(11& '
$"11' )
$str11) =
{11= >
clientDetails11> K
.11K L
AccountCreation11L [
.11[ \
PoliticalFunction11\ m
}11m n
"11n o
)11o p
)11p q
;11q r
document55 
.55 
Close55 
(55 
)55 
;55 
return66 
stream66 
.66 
ToArray66 !
(66! "
)66" #
;66# $
}77 	
}88 
}99 À,
úC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Signatures\GetClientInfo\GetClientInfoQueryHandler.cs
	namespace 	
	Signature
 
. 
API 
. 

Signatures "
." #
GetClientInfo# 0
{ 
public		 

class		 
GetClientInfoQuery		 #
:		$ %
IRequest		& .
<		. /
ClientDetails		/ <
>		< =
{

 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class '
GetClientInfoQueryValidator ,
:- .
AbstractValidator/ @
<@ A
GetClientInfoQueryA S
>S T
{ 
public '
GetClientInfoQueryValidator *
(* +
)+ ,
{ 	
RuleFor 
( 
x 
=> 
x 
. 
ClientId #
)# $
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( ?
)? @
;@ A
} 	
} 
public 

class %
GetClientInfoQueryHandler *
:+ ,
IRequestHandler- <
<< =
GetClientInfoQuery= O
,O P
ClientDetailsQ ^
>^ _
{ 
private 
readonly %
IDocumentUploadRepository 2%
_documentUploadRepository3 L
;L M
private 
readonly &
IAccountCreationRepository 3&
_accountCreationRepository4 N
;O P
private 
readonly 
IClientRepository *
_clientRepository+ <
;= >
private 
readonly 

IValidator #
<# $
GetClientInfoQuery$ 6
>6 7

_validator8 B
;B C
public %
GetClientInfoQueryHandler (
(( )%
IDocumentUploadRepository) B$
documentUploadRepositoryC [
,[ \&
IAccountCreationRepository] w&
accountCreationRepository	x ë
,
ë í
IClientRepository
ì §
clientRepository
• µ
,
µ ∂

IValidator
∑ ¡
<
¡ ¬ 
GetClientInfoQuery
¬ ‘
>
‘ ’
	validator
÷ ﬂ
)
ﬂ ‡
{   	%
_documentUploadRepository!! %
=!!& '$
documentUploadRepository!!( @
??!!A C
throw!!D I
new!!J M!
ArgumentNullException!!N c
(!!c d
nameof!!d j
(!!j k%
documentUploadRepository	!!k É
)
!!É Ñ
)
!!Ñ Ö
;
!!Ö Ü&
_accountCreationRepository"" &
=""' (%
accountCreationRepository"") B
??""C E
throw""F K
new""L O!
ArgumentNullException""P e
(""e f
nameof""f l
(""l m&
accountCreationRepository	""m Ü
)
""Ü á
)
""á à
;
""à â
_clientRepository## 
=## 
clientRepository##  0
??##1 3
throw##4 9
new##: =!
ArgumentNullException##> S
(##S T
nameof##T Z
(##Z [
clientRepository##[ k
)##k l
)##l m
;##m n

_validator$$ 
=$$ 
	validator$$ "
;$$" #
}%% 	
public)) 
async)) 
Task)) 
<)) 
ClientDetails)) '
>))' (
Handle))) /
())/ 0
GetClientInfoQuery))0 B
request))C J
,))J K
CancellationToken))L ]
cancellationToken))^ o
)))o p
{** 	
var++ 
validationResult++  
=++! "
await++# (

_validator++) 3
.++3 4
ValidateAsync++4 A
(++A B
request++B I
,++I J
cancellationToken++K \
)++\ ]
;++] ^
if-- 
(-- 
!-- 
validationResult-- !
.--! "
IsValid--" )
)--) *
{.. 
throw00 
new00 
FluentValidation00 *
.00* +
ValidationException00+ >
(00> ?
validationResult00? O
.00O P
Errors00P V
)00V W
;00W X
}11 
var33 
clientdetails33 
=33 
new33  #
ClientDetails33$ 1
(331 2
)332 3
;333 4
clientdetails55 
.55 
ClientDocument55 (
=55) *
await55+ 0%
_documentUploadRepository551 J
.55J K#
GetClientDocumentsAsync55K b
(55b c
request55c j
.55j k
ClientId55k s
)55s t
;55t u
clientdetails66 
.66 
Client66  
=66! "
await66# (
_clientRepository66) :
.66: ;
GetByIdAsync66; G
(66G H
request66H O
.66O P
ClientId66P X
)66X Y
;66Y Z
clientdetails77 
.77 
AccountCreation77 )
=77* +
await77, 1&
_accountCreationRepository772 L
.77L M
GetByClientIdAsync77M _
(77_ `
request77` g
.77g h
ClientId77h p
)77p q
;77q r
return99 
clientdetails99  
;99  !
}:: 	
};; 
}<< ß
ùC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Signatures\GetClientInfo\GetClientInfoQueryEndpoint.cs
	namespace 	
	Signature
 
. 
API 
. 

Signatures "
." #
GetClientInfo# 0
{ 
public 

class &
GetClientInfoQueryEndpoint +
:, -
CarterModule. :
{ 
public 
override 
void 
	AddRoutes &
(& '!
IEndpointRouteBuilder' <
app= @
)@ A
{		 	
app

 
.

 
MapGet

 
(

 
$str

 1
,

1 2
async

3 8
(

9 :
HttpRequest

: E
req

F I
,

I J
HttpResponse

K W
res

X [
)

[ \
=>

] _
{ 
if 
( 
! 
req 
. 
RouteValues %
.% &
TryGetValue& 1
(1 2
$str2 <
,< =
out> A
varB E
clientIdObjF Q
)Q R
||S U
! 
Guid 
. 
TryParse "
(" #
clientIdObj# .
?. /
./ 0
ToString0 8
(8 9
)9 :
,: ;
out< ?
var@ C
clientIdD L
)L M
)M N
{ 
res 
. 

StatusCode "
=# $
StatusCodes% 0
.0 1
Status400BadRequest1 D
;D E
await 
res 
. 

WriteAsync (
(( )
$str) Q
)Q R
;R S
return 
; 
} 
var 
query 
= 
new 
GetClientInfoQuery  2
{3 4
ClientId5 =
=> ?
clientId@ H
}I J
;J K
var 
mediator 
= 
req "
." #
HttpContext# .
.. /
RequestServices/ >
.> ?
GetRequiredService? Q
<Q R
	IMediatorR [
>[ \
(\ ]
)] ^
;^ _
var 
result 
= 
await "
mediator# +
.+ ,
Send, 0
(0 1
query1 6
)6 7
;7 8
var 
pdfBytes 
= 
PdfGenerator +
.+ ,
GeneratePdf, 7
(7 8
result8 >
)> ?
;? @
res 
. 
ContentType 
=  !
$str" 3
;3 4
res 
. 
Headers 
. 
Add 
(  
$str  5
,5 6
$"7 9
$str9 U
{U V
clientIdV ^
}^ _
$str_ h
"h i
)i j
;j k
await 
res 
. 
Body 
. 

WriteAsync )
() *
pdfBytes* 2
,2 3
$num4 5
,5 6
pdfBytes7 ?
.? @
Length@ F
)F G
;G H
} 
) 
; 
}"" 	
}## 
}$$ ò
ÇC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Signatures\ClientDetails.cs
	namespace 	
	Signature
 
. 
API 
. 

Signatures "
{ 
public 

class 
ClientDetails 
{ 
public 
Client 
Client 
{ 
get "
;" #
set$ '
;' (
}) *
public !
AccountCreationEntity $
AccountCreation% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public		 
List		 
<		 
ClientDocument		 "
>		" #
ClientDocument		$ 2
{		3 4
get		5 8
;		8 9
set		: =
;		= >
}		? @
}

 
} Û,
qC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Program.cs
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
builder 
. 
Services 
. 

AddMediatR 
( 
cfg 
=>  "
cfg# &
.& '(
RegisterServicesFromAssembly' C
(C D
typeofD J
(J K
ProgramK R
)R S
.S T
AssemblyT \
)\ ]
)] ^
;^ _
builder 
. 
Services 
. 

AddMediatR 
( 
cfg 
=>  "
cfg# &
.& '(
RegisterServicesFromAssembly' C
(C D
typeofD J
(J K
GetClientInfoQueryK ]
)] ^
.^ _
GetTypeInfo_ j
(j k
)k l
.l m
Assemblym u
)u v
)v w
;w x
builder 
. 
Services 
. 
	AddScoped 
< %
IDocumentUploadRepository 4
,4 5$
DocumentUploadRepository6 N
>N O
(O P
)P Q
;Q R
builder 
. 
Services 
. 
	AddScoped 
< &
IAccountCreationRepository 5
,5 6%
AccountCreationRepository7 P
>P Q
(Q R
)R S
;S T
builder 
. 
Services 
. 
	AddScoped 
< 
IClientRepository ,
,, -
ClientRepository. >
>> ?
(? @
)@ A
;A B
builder 
. 
Services 
. 
AddDbContext 
< 
SignatureContext .
>. /
(/ 0
options0 7
=>8 :
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
builder%% 
.%% 
Services%% 
.%% 
	Configure%% 
<%% 
FormOptions%% &
>%%& '
(%%' (
options%%( /
=>%%0 2
{&& 
options'' 
.'' $
MultipartBodyLengthLimit'' $
=''% &
$num''' 0
;''0 1
}(( 
)(( 
;(( 
builder++ 
.++ 
Services++ 
.++ 
	AddScoped++ 
(++ 
typeof++ !
(++! "
IAsyncRepository++" 2
<++2 3
>++3 4
)++4 5
,++5 6
typeof++7 =
(++= >
RepositoryBase++> L
<++L M
>++M N
)++N O
)++O P
;++P Q
builder,, 
.,, 
Services,, 
.,, 

AddLogging,, 
(,, 
),, 
;,, 
builder-- 
.-- 
Services-- 
.-- 
AddControllers-- 
(--  
)--  !
;--! "
builder00 
.00 
Services00 
.00 #
AddEndpointsApiExplorer00 (
(00( )
)00) *
;00* +
builder11 
.11 
Services11 
.11 
AddSwaggerGen11 
(11 
)11  
;11  !
builder22 
.22 
Services22 
.22 
	AddCarter22 
(22 
)22 
;22 
var44 
app44 
=44 	
builder44
 
.44 
Build44 
(44 
)44 
;44 
app77 
.77 
MigrateDatabase77 
<77 
SignatureContext77 $
>77$ %
(77% &
(77& '
context77' .
,77. /
services770 8
)778 9
=>77: <
{77= >
}77? @
)77@ A
;77A B
app:: 
.:: 

UseSwagger:: 
(:: 
):: 
;:: 
app;; 
.;; 
UseSwaggerUI;; 
(;; 
);; 
;;; 
app== 
.== 
UseHttpsRedirection== 
(== 
)== 
;== 
app>> 
.>> 
UseAuthentication>> 
(>> 
)>> 
;>> 
app?? 
.?? 

UseRouting?? 
(?? 
)?? 
;?? 
app@@ 
.@@ 
UseAuthorization@@ 
(@@ 
)@@ 
;@@ 
appBB 
.BB 
	MapCarterBB 
(BB 
)BB 
;BB 
appDD 
.DD 
UseEndpointsDD 
(DD 
	endpointsDD 
=>DD 
{EE 
	endpointsFF 
.FF 
MapControllersFF 
(FF 
)FF 
;FF 
}GG 
)GG 
;GG 
appII 
.II 
RunII 
(II 
)II 	
;II	 
Â
C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Models\ClientDocument.cs
	namespace 	
	Signature
 
. 
API 
. 
Models 
{ 
public 

class 
ClientDocument 
:  !

EntityBase" ,
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
CIN		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
DateTime

 
DateCIN

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
	CINImage1 
{  !
get" %
;% &
set' *
;* +
}, -
public 
byte 
[ 
] 
CINImageData1 #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	CINImage2 
{  !
get" %
;% &
set' *
;* +
}, -
public 
byte 
[ 
] 
CINImageData2 #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Selfie 
{ 
get "
;" #
set$ '
;' (
}) *
public 
byte 
[ 
] 

SelfieData  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ˚
ÄC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Models\AccountCreation.cs
	namespace 	
	Signature
 
. 
API 
. 
Models 
{ 
public 

class !
AccountCreationEntity &
:' (

EntityBase) 3
{ 
public 
Guid 
ClientId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Nationality		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
OtherNationality

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
string 

CivilState  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ProfessionalStatus (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
ActivityNature $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
FieldOfProfession '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
decimal 
	NetIncome  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
decimal 
OtherIncome "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
PPE 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
PoliticalFunction '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ◊	
{C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Models\EntityBase.cs
	namespace 	
	Signature
 
. 
API 
. 
Models 
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
} Ü
wC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Models\Client.cs
	namespace 	
	Signature
 
. 
API 
. 
Models 
{		 
public

 

class

 
Client

 
:

 

EntityBase

 $
{ 
public 
string 
Civility 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
IsEmailValid  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
IsNumberValid !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
Address 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
Address 
{ 
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

Governance  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

PostalCode  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Number 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Street 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}   …T
îC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\RepositoryBase.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
{		 
public

 

class

 
RepositoryBase

 
<

  
T

  !
>

! "
:

# $
IAsyncRepository

% 5
<

5 6
T

6 7
>

7 8
where

9 >
T

? @
:

A B

EntityBase

C M
{ 
	protected 
readonly 
SignatureContext +

_dbContext, 6
;6 7
public 
RepositoryBase 
( 
SignatureContext .
	dbContext/ 8
)8 9
{ 	

_dbContext 
= 
	dbContext "
??# %
throw& +
new, /!
ArgumentNullException0 E
(E F
nameofF L
(L M
	dbContextM V
)V W
)W X
;X Y
} 	
public 
async 
Task 
< 
IReadOnlyList '
<' (
T( )
>) *
>* +
GetAllAsync, 7
(7 8
)8 9
{ 	
return 
await 

_dbContext #
.# $
Set$ '
<' (
T( )
>) *
(* +
)+ ,
., -
ToListAsync- 8
(8 9
)9 :
;: ;
} 	
public 
async 
Task 
< 
IReadOnlyList '
<' (
T( )
>) *
>* +
GetAsync, 4
(4 5

Expression5 ?
<? @
Func@ D
<D E
TE F
,F G
boolH L
>L M
>M N
	predicateO X
)X Y
{ 	
return 
await 

_dbContext #
.# $
Set$ '
<' (
T( )
>) *
(* +
)+ ,
., -
Where- 2
(2 3
	predicate3 <
)< =
.= >
ToListAsync> I
(I J
)J K
;K L
} 	
public 
async 
Task 
< 
IReadOnlyList '
<' (
T( )
>) *
>* +
GetAsync, 4
(4 5

Expression5 ?
<? @
Func@ D
<D E
TE F
,F G
boolH L
>L M
>M N
	predicateO X
=Y Z
null[ _
,_ `
Funca e
<e f

IQueryablef p
<p q
Tq r
>r s
,s t
IOrderedQueryable	u Ü
<
Ü á
T
á à
>
à â
>
â ä
orderBy
ã í
=
ì î
null
ï ô
,
ô ö
string
õ °
includeString
¢ Ø
=
∞ ±
null
≤ ∂
,
∂ ∑
bool
∏ º
disableTracking
Ω Ã
=
Õ Œ
true
œ ”
)
” ‘
{   	

IQueryable!! 
<!! 
T!! 
>!! 
query!! 
=!!  !

_dbContext!!" ,
.!!, -
Set!!- 0
<!!0 1
T!!1 2
>!!2 3
(!!3 4
)!!4 5
;!!5 6
if"" 
("" 
disableTracking"" 
)""  
query""! &
=""' (
query"") .
."". /
AsNoTracking""/ ;
(""; <
)""< =
;""= >
if$$ 
($$ 
!$$ 
string$$ 
.$$ 
IsNullOrWhiteSpace$$ *
($$* +
includeString$$+ 8
)$$8 9
)$$9 :
query$$; @
=$$A B
query$$C H
.$$H I
Include$$I P
($$P Q
includeString$$Q ^
)$$^ _
;$$_ `
if&& 
(&& 
	predicate&& 
!=&& 
null&& !
)&&! "
query&&# (
=&&) *
query&&+ 0
.&&0 1
Where&&1 6
(&&6 7
	predicate&&7 @
)&&@ A
;&&A B
if(( 
((( 
orderBy(( 
!=(( 
null(( 
)((  
return)) 
await)) 
orderBy)) $
())$ %
query))% *
)))* +
.))+ ,
ToListAsync)), 7
())7 8
)))8 9
;))9 :
return** 
await** 
query** 
.** 
ToListAsync** *
(*** +
)**+ ,
;**, -
}++ 	
public-- 
async-- 
Task-- 
<-- 
IReadOnlyList-- '
<--' (
T--( )
>--) *
>--* +
GetAsync--, 4
(--4 5

Expression--5 ?
<--? @
Func--@ D
<--D E
T--E F
,--F G
bool--H L
>--L M
>--M N
	predicate--O X
=--Y Z
null--[ _
,--_ `
Func--a e
<--e f

IQueryable--f p
<--p q
T--q r
>--r s
,--s t
IOrderedQueryable	--u Ü
<
--Ü á
T
--á à
>
--à â
>
--â ä
orderBy
--ã í
=
--ì î
null
--ï ô
,
--ô ö
List
--õ ü
<
--ü †

Expression
--† ™
<
--™ ´
Func
--´ Ø
<
--Ø ∞
T
--∞ ±
,
--± ≤
object
--≥ π
>
--π ∫
>
--∫ ª
>
--ª º
includes
--Ω ≈
=
--∆ «
null
--» Ã
,
--Ã Õ
bool
--Œ “
disableTracking
--” ‚
=
--„ ‰
true
--Â È
)
--È Í
{.. 	

IQueryable// 
<// 
T// 
>// 
query// 
=//  !

_dbContext//" ,
.//, -
Set//- 0
<//0 1
T//1 2
>//2 3
(//3 4
)//4 5
;//5 6
if00 
(00 
disableTracking00 
)00  
query00! &
=00' (
query00) .
.00. /
AsNoTracking00/ ;
(00; <
)00< =
;00= >
if22 
(22 
includes22 
!=22 
null22  
)22  !
query22" '
=22( )
includes22* 2
.222 3
	Aggregate223 <
(22< =
query22= B
,22B C
(22D E
current22E L
,22L M
include22N U
)22U V
=>22W Y
current22Z a
.22a b
Include22b i
(22i j
include22j q
)22q r
)22r s
;22s t
if44 
(44 
	predicate44 
!=44 
null44 !
)44! "
query44# (
=44) *
query44+ 0
.440 1
Where441 6
(446 7
	predicate447 @
)44@ A
;44A B
if66 
(66 
orderBy66 
!=66 
null66 
)66  
return77 
await77 
orderBy77 $
(77$ %
query77% *
)77* +
.77+ ,
ToListAsync77, 7
(777 8
)778 9
;779 :
return88 
await88 
query88 
.88 
ToListAsync88 *
(88* +
)88+ ,
;88, -
}99 	
public;; 
virtual;; 
async;; 
Task;; !
<;;! "
T;;" #
>;;# $
GetByIdAsync;;% 1
(;;1 2
Guid;;2 6
id;;7 9
);;9 :
{<< 	
return== 
await== 

_dbContext== #
.==# $
Set==$ '
<==' (
T==( )
>==) *
(==* +
)==+ ,
.==, -
	FindAsync==- 6
(==6 7
id==7 9
)==9 :
;==: ;
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
T@@ 
>@@ 
AddAsync@@ %
(@@% &
T@@& '
entity@@( .
)@@. /
{AA 	
tryBB 
{CC 

_dbContextEE 
.EE 
SetEE 
<EE 
TEE 
>EE 
(EE 
)EE 
.EE  
AddEE  #
(EE# $
entityEE$ *
)EE* +
;EE+ ,
awaitFF 

_dbContextFF 
.FF 
SaveChangesAsyncFF -
(FF- .
)FF. /
;FF/ 0
returnGG 
entityGG 
;GG 
}JJ 
catchKK 
(KK 
DbUpdateExceptionKK $
exKK% '
)KK' (
{KK) *
ConsoleMM 
.MM 
	WriteLineMM !
(MM! "
$"MM" $
$strMM$ 2
{MM2 3
exMM3 5
.MM5 6
MessageMM6 =
}MM= >
"MM> ?
)MM? @
;MM@ A
ifPP 
(PP 
exPP 
.PP 
InnerExceptionPP %
!=PP& (
nullPP) -
)PP- .
{QQ 
ConsoleSS 
.SS 
	WriteLineSS %
(SS% &
$"SS& (
$strSS( 6
{SS6 7
exSS7 9
.SS9 :
InnerExceptionSS: H
.SSH I
MessageSSI P
}SSP Q
"SSQ R
)SSR S
;SSS T
}UU 
throwVV 
exVV 
;VV 
}WW 
}[[ 	
public]] 
async]] 
Task]] 
UpdateAsync]] %
(]]% &
T]]& '
entity]]( .
)]]. /
{^^ 	

_dbContext__ 
.__ 
Entry__ 
(__ 
entity__ #
)__# $
.__$ %
State__% *
=__+ ,
EntityState__- 8
.__8 9
Modified__9 A
;__A B
await`` 

_dbContext`` 
.`` 
SaveChangesAsync`` -
(``- .
)``. /
;``/ 0
}aa 	
publiccc 
asynccc 
Taskcc 
DeleteAsynccc %
(cc% &
Tcc& '
entitycc( .
)cc. /
{dd 	

_dbContextee 
.ee 
Setee 
<ee 
Tee 
>ee 
(ee 
)ee 
.ee  
Removeee  &
(ee& '
entityee' -
)ee- .
;ee. /
awaitff 

_dbContextff 
.ff 
SaveChangesAsyncff -
(ff- .
)ff. /
;ff/ 0
}gg 	
}ii 
}jj Í
üC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\IDocumentUploadRepository.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
{ 
public 

	interface %
IDocumentUploadRepository .
:/ 0
IAsyncRepository1 A
<A B
ClientDocumentB P
>P Q
{ 
Task		 
<		 
ClientDocument		 
>		 
GetByClientIdAsync		 /
(		/ 0
Guid		0 4
clientId		5 =
)		= >
;		> ?
Task 
< 
List 
< 
ClientDocument  
>  !
>! "#
GetClientDocumentsAsync# :
(: ;
Guid; ?
clientId@ H
)H I
;I J
} 
} …
óC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\IClientRepository.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
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
} ⁄
ñC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\IAsyncRepository.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
{ 
public 

	interface 
IAsyncRepository %
<% &
T& '
>' (
where) .
T/ 0
:1 2

EntityBase3 =
{ 
Task		 
<		 
IReadOnlyList		 
<		 
T		 
>		 
>		 
GetAllAsync		 *
(		* +
)		+ ,
;		, -
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
@ A
	predicate

B K
)

K L
;

L M
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetAsync '
(' (

Expression( 2
<2 3
Func3 7
<7 8
T8 9
,9 :
bool; ?
>? @
>@ A
?A B
	predicateC L
=M N
nullO S
,S T
Func( ,
<, -

IQueryable- 7
<7 8
T8 9
>9 :
,: ;
IOrderedQueryable< M
<M N
TN O
>O P
>P Q
?Q R
orderByS Z
=[ \
null] a
,a b
string( .
?. /
includeString0 =
=> ?
null@ D
,D E
bool( ,
disableTracking- <
== >
true? C
)C D
;D E
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
Func' +
<+ ,

IQueryable, 6
<6 7
T7 8
>8 9
,9 :
IOrderedQueryable; L
<L M
TM N
>N O
>O P
?P Q
orderByR Y
=Z [
null\ `
,` a
List' +
<+ ,

Expression, 6
<6 7
Func7 ;
<; <
T< =
,= >
object? E
>E F
>F G
>G H
?H I
includesJ R
=S T
nullU Y
,Y Z
bool' +
disableTracking, ;
=< =
true> B
)B C
;C D
Task 
< 
T 
> 
GetByIdAsync 
( 
Guid !
id" $
)$ %
;% &
Task 
< 
T 
> 
AddAsync 
( 
T 
entity !
)! "
;" #
Task 
UpdateAsync 
( 
T 
entity !
)! "
;" #
Task 
DeleteAsync 
( 
T 
entity !
)! "
;" #
} 
} Ñ
†C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\IAccountCreationRepository.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
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
 √
ûC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\DocumentUploadRepository.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
{ 
public		 

class		 $
DocumentUploadRepository		 )
:		* +
RepositoryBase		, :
<		: ;
ClientDocument		; I
>		I J
,		J K%
IDocumentUploadRepository		L e
{

 
public $
DocumentUploadRepository '
(' (
SignatureContext( 8
	dbContext9 B
)B C
:D E
baseF J
(J K
	dbContextK T
)T U
{ 	
} 	
public 
async 
Task 
< 
ClientDocument (
>( )
GetByClientIdAsync* <
(< =
Guid= A
clientIdB J
)J K
{ 	
return 
await 

_dbContext #
.# $
ClientDocuments$ 3
.3 4
FirstOrDefaultAsync4 G
(G H
aH I
=>J L
aM N
.N O
ClientIdO W
==X Z
clientId[ c
)c d
;d e
} 	
public 
async 
Task 
< 
List 
< 
ClientDocument -
>- .
>. /#
GetClientDocumentsAsync0 G
(G H
GuidH L
clientIdM U
)U V
{ 	
return 
await 

_dbContext #
.# $
ClientDocuments$ 3
. 
Where 
( 
doc 
=> 
doc !
.! "
ClientId" *
==+ -
clientId. 6
)6 7
. 
ToListAsync 
( 
) 
; 
} 	
} 
} ‹
ñC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\ClientRepository.cs
	namespace

 	
	Signature


 
.

 
API

 
.

 
Infrastructure

 &
.

& '
Repositories

' 3
{ 
public 

class 
ClientRepository !
:" #
RepositoryBase$ 2
<2 3
Client3 9
>9 :
,: ;
IClientRepository< M
{ 
public 
ClientRepository 
(  
SignatureContext  0
	dbContext1 :
): ;
:< =
base> B
(B C
	dbContextC L
)L M
{ 	
} 	
public 
async 
Task 
< 
Client  
>  !
GetByClientIdAsync" 4
(4 5
Guid5 9
Id: <
)< =
{ 	
return 
await 

_dbContext #
.# $
Clients$ +
.+ ,
FirstOrDefaultAsync, ?
(? @
a@ A
=>B D
aE F
.F G
IdG I
==J L
IdM O
)O P
;P Q
} 	
public 
async 
Task 
< 
bool 
> 

UserExists  *
(* +
string+ 1
email2 7
)7 8
{ 	
return 
await 

_dbContext #
.# $
Clients$ +
.+ ,
AnyAsync, 4
(4 5
c5 6
=>7 9
c: ;
.; <
Email< A
==B D
emailE J
)J K
;K L
} 	
} 
} ¨
üC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Repositories\AccountCreationRepository.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Repositories' 3
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
(( )
SignatureContext) 9
	dbContext: C
)C D
:E F
baseG K
(K L
	dbContextL U
)U V
{ 	
} 	
public 
async 
Task 
< !
AccountCreationEntity /
>/ 0
GetByClientIdAsync1 C
(C D
GuidD H
clientIdI Q
)Q R
{ 	
return 
await 

_dbContext #
.# $
AccountCreation$ 3
.3 4
FirstOrDefaultAsync4 G
(G H
aH I
=>J L
aM N
.N O
ClientIdO W
==X Z
clientId[ c
)c d
;d e
} 	
} 
} à 
ïC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Persistance\SignatureContext.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '
Persistance' 2
{ 
public 

class 
SignatureContext !
:" #
	DbContext$ -
{ 
public

 
SignatureContext

 
(

  
DbContextOptions

  0
<

0 1
SignatureContext

1 A
>

A B
options

C J
)

J K
:

L M
base

N R
(

R S
options

S Z
)

Z [
{ 	
} 	
public 
DbSet 
< !
AccountCreationEntity *
>* +
AccountCreation, ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< 
Client 
> 
Clients $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DbSet 
< 
ClientDocument #
># $
ClientDocuments% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  !
AccountCreationEntity  5
>5 6
(6 7
)7 8
. 
HasOne 
< 
Client 
> 
(  
)  !
. 
WithOne 
( 
) 
. 
HasForeignKey 
< !
AccountCreationEntity 4
>4 5
(5 6
o6 7
=>8 :
o; <
.< =
ClientId= E
)E F
;F G
modelBuilder 
. 
Entity 
<  
ClientDocument  .
>. /
(/ 0
)0 1
. 
HasOne 
< 
Client 
> 
( 
)  
. 
WithOne 
( 
) 
. 
HasForeignKey 
< 
ClientDocument ,
>, -
(- .
o. /
=>0 2
o3 4
.4 5
ClientId5 =
)= >
;> ?
modelBuilder 
. 
Entity 
<  
Client  &
>& '
(' (
)( )
. 
OwnsOne 
( 
c 
=> 
c 
. 
Address #
)# $
;$ %
ConfigureEntities!! 
(!! 
modelBuilder!! *
)!!* +
;!!+ ,
base"" 
."" 
OnModelCreating""  
(""  !
modelBuilder""! -
)""- .
;"". /
}## 	
private%% 
void%% 
ConfigureEntities%% &
(%%& '
ModelBuilder%%' 3
modelBuilder%%4 @
)%%@ A
{&& 	
modelBuilder(( 
.(( 
Entity(( 
<((  !
AccountCreationEntity((  5
>((5 6
(((6 7
)((7 8
.((8 9
HasKey((9 ?
(((? @
c((@ A
=>((B D
c((E F
.((F G
Id((G I
)((I J
;((J K
modelBuilder)) 
.)) 
Entity)) 
<))  
ClientDocument))  .
>)). /
())/ 0
)))0 1
.))1 2
HasKey))2 8
())8 9
c))9 :
=>)); =
c))> ?
.))? @
Id))@ B
)))B C
;))C D
},, 	
}-- 
}.. “)
ëC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Signature\Signature.API\Infrastructure\Extensions\HostExtension.cs
	namespace 	
	Signature
 
. 
API 
. 
Infrastructure &
.& '

Extensions' 1
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
}55 