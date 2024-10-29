ı
èC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\obj\Debug\net8.0\HealthCheck.RazorAssemblyInfo.cs
[ 
assembly 	
:	 

	Microsoft 
. 

AspNetCore 
.  
Mvc  #
.# $
ApplicationParts$ 4
.4 52
&ProvideApplicationPartFactoryAttribute5 [
([ \
$str	\ Ø
+
∞ ±
$str )
)) *
]* +…
äC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\obj\Debug\net8.0\HealthCheck.AssemblyInfo.cs
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
$str6 C
)C D
]D E
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
$str6 C
)C D
]D E
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
$str4 A
)A B
]B C
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
]@ A†
ùC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
Ñ Öè
åC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\obj\Debug\net8.0\HealthCheck.GlobalUsings.g.cs‡
hC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddHealthChecksUI "
(" #
)# $
.$ %
AddInMemoryStorage% 7
(7 8
)8 9
;9 :
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
! 
app 
. 	
Environment	 
. 
IsDevelopment "
(" #
)# $
)$ %
{ 
app 
. 
UseExceptionHandler 
( 
$str )
)) *
;* +
} 
app 
. 
UseStaticFiles 
( 
) 
; 
app 
. 

UseRouting 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapHealthChecksUI 
( 
) 
; 
app 
. 
MapControllerRoute 
( 
name 
: 	
$str
 
, 
pattern 
: 
$str 5
)5 6
;6 7
app 
. 
Run 
( 
) 	
;	 
“
vC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\Models\ErrorViewModel.cs
	namespace 	
HealthCheck
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 ≠
{C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\HealthCheck\HealthCheck\Controllers\HomeController.cs
	namespace 	
HealthCheck
 
. 
Controllers !
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
Redirect 
( 
$str -
)- .
;. /
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   