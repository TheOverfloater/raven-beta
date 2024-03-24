@ECHO OFF
:Mapname
REM Change dir first
cd .\compile

SET /P mapname=Map to update: 
IF "%mapname%"=="" GOTO Error

REM Check if the MAP file exists
IF NOT exist %mapname%.bsp GOTO Error_NoMAP

REM Check if the BSP file exists
IF NOT exist %mapname%.bsp GOTO Error_NoBSP

ECHO Updating %mapname%...
hlcsg -chart -estimate -onlyents %mapname%.map
GOTO Exit

:Error_NoMAP
ECHO Error: File %mapname%.map is missing
GOTO Exit

:Error_NoBSP
ECHO Error: File %mapname%.bsp is missing
GOTO Exit

:Error
ECHO Error: No map specified!
GOTO Mapname
:Exit
set /p DUMMY=Hit ENTER to exit...