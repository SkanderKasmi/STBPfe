½
C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\obj\Debug\net8.0\CQRS.AssemblyInfo.cs
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
$str6 <
)< =
]= >
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
$str6 <
)< =
]= >
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
$str4 :
): ;
]; <
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
]@ Aœ
™C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\obj\Debug\net8.0\.NETCoreApp,Version=v8.0.AssemblyAttributes.cs
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
„ …„
C:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\obj\Debug\net8.0\CQRS.GlobalUsings.g.csÊ
jC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\IQueryHandler.cs
	namespace 	
CQRS
 
{		 
public

 

	interface

 
IQueryHandler

 "
<

" #
in

# %
TQuery

& ,
,

, -
	TResponse

. 7
>

7 8
: 
IRequestHandler 
< 
TQuery 
, 
	TResponse '
>' (
where 	
TQuery
 
: 
IQuery 
< 
	TResponse #
># $
where 	
	TResponse
 
: 
notnull 
{ 
} 
} ñ
cC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\IQuery.cs
	namespace 	
CQRS
 
{		 
public

 

	interface

 
IQuery

 
<

 
out

 
	TResponse

  )
>

) *
:

+ ,
IRequest

- 5
<

5 6
	TResponse

6 ?
>

? @
where 

	TResponse 
: 
notnull 
{ 
} 
} ÿ
lC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\ICommandHandler.cs
	namespace 	
CQRS
 
{		 
public

 

	interface

 
ICommandHandler

 $
<

$ %
in

% '
TCommand

( 0
>

0 1
: 
ICommandHandler 
< 
TCommand 
, 
Unit  $
>$ %
where 	
TCommand
 
: 
ICommand 
< 
Unit "
>" #
{ 
} 
public 

	interface 
ICommandHandler $
<$ %
in% '
TCommand( 0
,0 1
	TResponse2 ;
>; <
: 	
IRequestHandler
 
< 
TCommand "
," #
	TResponse$ -
>- .
where 
TCommand 
: 
ICommand !
<! "
	TResponse" +
>+ ,
where 
	TResponse 
: 
notnull !
{ 
} 
} Û
eC:\Users\admin\OneDrive\Desktop\STBEverywhere\Back-end\STB_Everywhere\BuildingBlocks\CQRS\ICommand.cs
	namespace 	
CQRS
 
{		 
public

 

	interface

 
ICommand

 
:

 
ICommand

  (
<

( )
Unit

) -
>

- .
{ 
} 
public 

	interface 
ICommand 
< 
out !
	TResponse" +
>+ ,
:- .
IRequest/ 7
<7 8
	TResponse8 A
>A B
{ 
} 
} 