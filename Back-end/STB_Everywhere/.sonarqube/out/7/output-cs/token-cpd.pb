Ú
›C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\ValidationBehavior\obj\Debug\net8.0\ValidationBehavior.AssemblyInfo.cs
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
$str6 J
)J K
]K L
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
$str6 J
)J K
]K L
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
$str4 H
)H I
]I J
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
]@ Aª
§C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\ValidationBehavior\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
„ … 
C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\ValidationBehavior\obj\Debug\net8.0\ValidationBehavior.GlobalUsings.g.cs 
}C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\ValidationBehavior\ValidationBehavior.cs
	namespace

 	
ValidationBehavior


 
{ 
public 

class 
ValidationBehavior #
<# $
TRequest$ ,
,, -
	TResponse. 7
>7 8
( 
IEnumerable 
< 

IValidator 
< 
TRequest $
>$ %
>% &

validators' 1
)1 2
: 
IPipelineBehavior 
< 
TRequest  
,  !
	TResponse" +
>+ ,
where 	
TRequest
 
: 
ICommand 
< 
	TResponse '
>' (
{ 
public 
async 
Task 
< 
	TResponse #
># $
Handle% +
(+ ,
TRequest, 4
request5 <
,< ="
RequestHandlerDelegate> T
<T U
	TResponseU ^
>^ _
next` d
,d e
CancellationTokenf w
cancellationToken	x ‰
)
‰ Š
{ 	
var 
context 
= 
new 
ValidationContext /
</ 0
TRequest0 8
>8 9
(9 :
request: A
)A B
;B C
var 
validationResults !
=" #
await 
Task 
. 
WhenAll "
(" #

validators# -
.- .
Select. 4
(4 5
v5 6
=>7 9
v: ;
.; <
ValidateAsync< I
(I J
contextJ Q
,Q R
cancellationTokenS d
)d e
)e f
)f g
;g h
var 
failures 
= 
validationResults !
. 
Where 
( 
r 
=> 
r 
. 
Errors $
.$ %
Any% (
(( )
)) *
)* +
. 

SelectMany 
( 
r 
=>  
r! "
." #
Errors# )
)) *
. 
ToList 
( 
) 
; 
if 
( 
failures 
. 
Any 
( 
) 
) 
throw 
new 
ValidationException -
(- .
failures. 6
)6 7
;7 8
return!! 
await!! 
next!! 
(!! 
)!! 
;!!  
}"" 	
}## 
}$$ 