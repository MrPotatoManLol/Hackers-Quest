@echo off
title [Hackers Quest]
color 0A
goto InitRun

set "DebugEnabled=false"
set "DevCode=Debug_Enable_Access_Key_Developer"

:: Init Run::
:InitRun
echo Welcome. Would you like to enable Debug Mode?
echo Y - Yes
echo N - No
set /p answer=
if%answer%==Y goto DebugAccess
if%answer%==N goto Menu
set "answer="

:: Debug Access ::
:DebugAccess
cls
echo Please enter Developer Access Code:
set /p answer=
if %answer%==%DevCode% set "DebugEnabled=true"
goto Menu

:: Menu Page ::
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
if %DebugEnabled%==true (
    echo 
)
set /p answer=Type the number of your option and press enter:
if %answer%==1 goto Start
if %answer%==2 goto Credits
if %answer%==3 goto Exit
if %answer%==4 goto DebugStats
set "answer="

:: Debug Stats Page ::
:DebugStats
cls
echo
goto Menu

:: Exit Page ::
:Exit
cls
echo Thanks for playing!
pause
exit /b

:: Credits Page ::
:Credits
cls
echo Credits
echo.
echo Thank you for playing [Hackers Quest]
pause
goto Menu

:: Start Page ::
:Start
cls
set /p Name=Welcome new user. Please type your name:
cls
echo Welcome, %Name%. Would you like to begin the tutorial?
echo Y - Yes
echo N - No
set /p answer=
if%answer%==Y goto Tutorial
if%answer%==N CALL Tutorial.bat
