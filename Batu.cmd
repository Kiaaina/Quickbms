cd \
cls
title "Quickbms"
@echo off
color 04
cls  
set "DIR=%UserProfile%\OneDrive\Documents\quickbms\quickbms.bmp
mode 86,20
insertbmp.exe /p:"%DIR%" /x:0 /y:0 /z:150 & timeout /t 2 > nul

mode 100,20
set "quick=%UserProfile%\OneDrive\Documents\quickbms\quickbms_4gb_files.exe"
set "DIR=C:\Users\kiaai\OneDrive\Documents\quickbms\

cecho {04}Choose {03}1=Zip {07}or {06}2=Unzip{07}
set /p a=;
if %a%==1 goto zip
if %a%==2 goto 
goto top

:zip
cecho {04}Choose{03} (.bms){07}
set /p n=;
cecho {04}Choose Files To Compress{07}
set /p m=;
MD %DIR%Ziped\ 
%quick% %n% %m% %DIR%Ziped\
cecho {07}%time%{\n}
cecho {06} %quick% %n% %m% %DIR%Ziped\{\n}
cecho {07}%time%{\n}
pause
exit

:unzip
cecho {04}Choose (.bms){07}
set /p n=;
cecho {04}Choose Files To DeCompress{07}
set /p m=;
MD %DIR%Unzip\ 
%quick% %n% %m% %DIR%Unzip\
cecho {06}%time%{\n}
cecho {03} %quick% %n% %m% %DIR%Unzip\{\n}
cecho {06}%time%{\n}
pause
exit