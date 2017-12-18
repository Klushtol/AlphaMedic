�
7H:\AlphaMedic\AlphaMedic\alphamedic.core\Appointment.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public 

class 
Appointment 
{ 
} 
} �
2H:\AlphaMedic\AlphaMedic\alphamedic.core\Doctor.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public		 

class		 
Doctor		 
:		 
Employee		  
{

 
public 
string 
Degree 
{ 
get "
;" #
set$ '
;' (
}) *
public
string
	Education
{
get
;
set
;
}
public 
Schedule 
Schedule  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
4H:\AlphaMedic\AlphaMedic\alphamedic.core\Employee.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public		 

abstract		 
class		 
Employee		 "
:		# $
User		% )
{

 
public 
DateTime 
EmployementDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public
DateTime

{
get
;
set
;
}
public 
string '
EmployementRecordBookNumber 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
bool 
	IsWorking 
( 
) 
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} �
:H:\AlphaMedic\AlphaMedic\alphamedic.core\MedicalHistory.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public 

class 
MedicalHistory 
{ 
} 
} �
3H:\AlphaMedic\AlphaMedic\alphamedic.core\Patient.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public		 

class		 
Patient		 
:		 
User		 
{

 
public 

BloodGroup 

BloodGroup $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public
MedicalHistory
MedicalHistory
{
get
;
set
;
}
} 
public 

enum 

BloodGroup 
{ 
First 
,
Second 
, 
Third 
,
Fourth 
} 
} �
4H:\AlphaMedic\AlphaMedic\alphamedic.core\Schedule.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public 

class 
Schedule 
{ 
public 
List 
< 
Appointment 
>  
Appointments! -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public

 
DateTime

 
StartWorkingTime

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
DateTime 
FinishWorkingTime )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
}
} �
0H:\AlphaMedic\AlphaMedic\alphamedic.core\User.cs
	namespace 	

alphamedic
 
. 
core 
{ 
public 

abstract 
class 
User 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Surname 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Gender 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Adress 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Active 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

enum 
Gender 
{ 
Male 
, 
Female   
}!! 
}&& �
CH:\AlphaMedic\AlphaMedic\alphamedic.core\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 


( 
$str *
)* +
]+ ,
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[
assembly
:

AssemblyCopyright
(
$str
)
]
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *