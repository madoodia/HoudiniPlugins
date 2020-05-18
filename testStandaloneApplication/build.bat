@ECHO OFF
REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #

REM Run this batch file from explorer or ctrl+alt+h
set ROOT=%1
set CURRENT_DIR=%2

set HFS=C:/Program Files/Side Effects Software/Houdini 18.0.348
set MSVCDir=C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.24.28314
set PATH=%PATH%;%HFS%/bin;

call "%VCVARS_LOCATION%/vcvarsall.bat" x64

cd %ROOT%/%CURRENT_DIR%
start /w hcustom -s main.cpp
start /w main.exe
call gplay sphere.bgeo
