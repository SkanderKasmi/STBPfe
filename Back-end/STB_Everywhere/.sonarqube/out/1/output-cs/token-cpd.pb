ã
¤C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Domain\obj\Debug\net8.0\Registration.Domain.AssemblyInfo.cs
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
$str6 K
)K L
]L M
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
$str6 K
)K L
]L M
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
$str4 I
)I J
]J K
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
]@ A²
¯C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Domain\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
„ …©
¦C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Domain\obj\Debug\net8.0\Registration.Domain.GlobalUsings.g.csš
‚C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Domain\Entities\Client.cs
	namespace 	
Registration
 
. 
Domain 
. 
Entities &
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
}   ç	
„C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\Services\Registration\Registration.Domain\Commun\EntityBase.cs
	namespace 	
Registration
 
. 
Domain 
. 
Commun $
{ 
public		 

abstract		 
class		 

EntityBase		 $
{

 
public 
Guid 
Id 
{ 
get 
; 
	protected '
set( +
;+ ,
}- .
public 
string 
? 
	CreatedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
CreatedDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
LastModifiedBy %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
LastModifiedDate )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 