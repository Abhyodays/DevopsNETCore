�
W/mnt/c/Users/abhyodaysingh/Test Project/Devops/MVCApplication/MVCApplication/Startup.cs
	namespace 	
MVCApplication
 
{
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %

)3 4
{ 	

= 

;) *
} 	
public 
IConfiguration 

{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if   
(   
env   
.   

(  ! "
)  " #
)  # $
{!! 
app"" 
."" %
UseDeveloperExceptionPage"" -
(""- .
)"". /
;""/ 0
}## 
else$$ 
{%% 
app&& 
.&& 
UseExceptionHandler&& '
(&&' (
$str&&( 5
)&&5 6
;&&6 7
app(( 
.(( 
UseHsts(( 
((( 
)(( 
;(( 
})) 
app** 
.** 
UseHttpsRedirection** #
(**# $
)**$ %
;**% &
app++ 
.++ 
UseStaticFiles++ 
(++ 
)++  
;++  !
app-- 
.-- 

UseRouting-- 
(-- 
)-- 
;-- 
app// 
.// 
UseAuthorization//  
(//  !
)//! "
;//" #
app11 
.11 
UseEndpoints11 
(11 
	endpoints11 &
=>11' )
{22 
	endpoints33 
.33 
MapControllerRoute33 ,
(33, -
name44 
:44 
$str44 #
,44# $
pattern55 
:55 
$str55 E
)55E F
;55F G
}66 
)66
;66 
}77 	
}88 
}99 �
e/mnt/c/Users/abhyodaysingh/Test Project/Devops/MVCApplication/MVCApplication/Models/ErrorViewModel.cs
	namespace 	
MVCApplication
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 

=>		" $
!		% &
string		& ,
.		, -

(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} �
j/mnt/c/Users/abhyodaysingh/Test Project/Devops/MVCApplication/MVCApplication/Controllers/HomeController.cs
	namespace

 	
MVCApplication


 
.

 
Controllers

 $
{ 
public 

class 
HomeController 
:  !

Controller" ,
{
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 

Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 

Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	

( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public   

Error   "
(  " #
)  # $
{!! 	
return"" 
View"" 
("" 
new"" 
ErrorViewModel"" *
{""+ ,
	RequestId""- 6
=""7 8
Activity""9 A
.""A B
Current""B I
?""I J
.""J K
Id""K M
??""N P
HttpContext""Q \
.""\ ]
TraceIdentifier""] l
}""m n
)""n o
;""o p
}## 	
}$$ 
}%% �

W/mnt/c/Users/abhyodaysingh/Test Project/Devops/MVCApplication/MVCApplication/Program.cs
	namespace

 	
MVCApplication


 
{ 
public 

class 
Program 
{
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} 