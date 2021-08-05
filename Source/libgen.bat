call :%~1_%~2
exit /b 0
:float_float
echo for /f %%%%i in ('powershell %%~2'^) DO set %%~1=%%%%i>fclib_float.bat
exit /b 0
:array_max
(
echo set /a len=%%~3-1
echo setlocal enabledelayedexpansion
echo set max=^^!%%~2[0]^^!
echo for %%%%i in (0,1,%%len%%^) do if ^^!%%~2[%%%%i]^^! GTR %%max%% set max=^^!%%~2[%%%%i]^^!
echo (endlocal ^& set %%~1=%%max%%^)
)>fclib_array_max.bat
exit /b 0
:array_min
(
echo set /a len=%%~3-1
echo setlocal enabledelayedexpansion
echo set min=^^!%%~2[0]^^!
echo for %%%%i in (0,1,%%len%%^) do if ^^!%%~2[%%%%i]^^! LSS %%max%% set min=^^!%%~2[%%%%i]^^!
echo (endlocal ^& set %%~1=%%min%%^)
)>fclib_array_min.bat
exit /b 0
:array_sum
(
echo set /a len=%%~3-1
echo set sum=0
echo setlocal enabledelayedexpansion
echo for %%%%i in (0,1,%%len%%^) do set /a sum+=^^!%%~2[%%%%i]^^!
echo (endlocal ^& set %%~1=%%sum%%^)
)>fclib_array_sum.bat
exit /b 0
:array_len
(
echo set res_len=0
echo :loop
echo if not defined %%~2[%%res_len%%] (
echo	set %%~1=%%res_len%%
echo	exit /b
echo ^)
echo set /a res_len+=1
echo goto :loop
)>fclib_array_len.bat
exit /b 0
:math_abs
(
echo set tar=%%~2
echo set %%~1=%%tar:-=%%
)>fclib_math_abs.bat
exit /b 0
:math_even
(
echo set /a res=%%~2 %%%% 2
echo if %%res%% == 0 (
echo 	set %%~1=true
echo ^) else (
echo 	set %%~1=false
echo ^)
)>fclib_math_even.bat
exit /b 0
:math_odd
(
echo set /a res=%%~2 %%%% 2
echo if %%res%% == 0 (
echo 	set %%~1=false
echo ^) else (
echo 	set %%~1=true
echo ^)
)>fclib_math_odd.bat
exit /b 0
:math_pow
(
echo set res=%%~2
echo set /a t=%%~3 - 1
echo for /l %%%%i in (1,1,%%t%%^) do (
echo 	set /a res*=%%res%%
echo ^)
echo set %%~1=%%res%%
)>fclib_math_pow.bat
exit /b 0
:math_fact
(
echo set mul=1
echo for /l %%%%i in (1,1,%%~2^) do set /a mul*=%%%%i
echo set %%~1=%%mul%%
)>fclib_math_fact.bat
exit /b 0
:string_lower
(
echo set lower=%%~2
echo set lower=%%lower:A=a%%
echo set lower=%%lower:B=b%%
echo set lower=%%lower:C=c%%
echo set lower=%%lower:D=d%%
echo set lower=%%lower:E=e%%
echo set lower=%%lower:F=f%%
echo set lower=%%lower:G=g%%
echo set lower=%%lower:H=h%%
echo set lower=%%lower:I=i%%
echo set lower=%%lower:J=j%%
echo set lower=%%lower:K=k%%
echo set lower=%%lower:L=l%%
echo set lower=%%lower:M=m%%
echo set lower=%%lower:N=n%%
echo set lower=%%lower:O=o%%
echo set lower=%%lower:P=p%%
echo set lower=%%lower:Q=q%%
echo set lower=%%lower:R=r%%
echo set lower=%%lower:S=s%%
echo set lower=%%lower:T=t%%
echo set lower=%%lower:U=u%%
echo set lower=%%lower:V=v%%
echo set lower=%%lower:W=w%%
echo set lower=%%lower:X=x%%
echo set lower=%%lower:Y=y%%
echo set lower=%%lower:Z=z%%
echo set %%~1=%%lower%%
)>fclib_string_lower.bat
exit /b 0
:string_upper
(
echo set upper=%%~2
echo set upper=%%upper:a=A%%
echo set upper=%%upper:b=B%%
echo set upper=%%upper:c=C%%
echo set upper=%%upper:d=D%%
echo set upper=%%upper:e=E%%
echo set upper=%%upper:f=F%%
echo set upper=%%upper:g=G%%
echo set upper=%%upper:h=H%%
echo set upper=%%upper:i=I%%
echo set upper=%%upper:j=J%%
echo set upper=%%upper:k=K%%
echo set upper=%%upper:l=L%%
echo set upper=%%upper:m=M%%
echo set upper=%%upper:n=N%%
echo set upper=%%upper:o=O%%
echo set upper=%%upper:p=P%%
echo set upper=%%upper:q=Q%%
echo set upper=%%upper:r=R%%
echo set upper=%%upper:s=S%%
echo set upper=%%upper:t=T%%
echo set upper=%%upper:u=U%%
echo set upper=%%upper:v=V%%
echo set upper=%%upper:w=W%%
echo set upper=%%upper:x=X%%
echo set upper=%%upper:y=Y%%
echo set upper=%%upper:z=Z%%
echo set %%~1=%%upper%%
)>fclib_string_upper.bat
exit /b 0
:string_length
(
echo setlocal enabledelayedexpansion
echo set len=0
echo set str=%%~2
echo :loop
echo if not "^!str:^~%%len%%^!" == "" set /a len+=1 ^& goto loop
echo (endlocal ^& set %%~1=%%len%%^)
)>fclib_string_length.bat
exit /b 0
:string_reverse
(
echo setlocal enabledelayedexpansion
echo set len=0
echo set str=%%~2
echo set newstr=
echo :loop
echo if not "^!str:^~%%len%%^!" == "" set /a len+=1 ^& goto loop
echo set /a strlen=%%len%%-1
echo for /l %%%%i in (%%strlen%%,-1,0^) do set newstr=^^!newstr^^!^^!str:^~%%%%i,1^^!
echo (endlocal ^& set %%~1=%%newstr%%^)
)>fclib_string_reverse.bat
exit /b 0
:list_max
(
echo set max=1
echo for %%%%i in ^(%%~2^) DO (
echo 	set max=%%%%i
echo 	goto fcmaxend
echo ^)
echo :fcmaxend
echo for %%%%i in (%%~2^) DO (
echo 	if %%%%i GTR %%max%% (
echo 		set max=%%%%i
echo 	^)
echo ^)
echo set %%~1=%%max%%
)>fclib_list_max.bat
exit /b 0
:list_min
(
echo set min=1
echo for %%%%i in ^(%%~2^) DO (
echo 	set min=%%%%i
echo 	goto fcminend
echo ^)
echo :fcminend
echo for %%%%i in (%%~2^) DO (
echo 	if %%%%i LSS %%min%% (
echo 		set min=%%%%i
echo 	^)
echo ^)
echo set %%~1=%%min%%
)>fclib_list_min.bat
exit /b 0
:list_sum
(
echo set sum=0
echo for %%%%i in ^(%%~2^) DO set /a sum+=%%%%i
echo set %%~1=%%sum%%
)>fclib_list_sum.bat
exit /b 0