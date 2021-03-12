@ECHO OFF
REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #

REM Run this batch file from explorer or ctrl+alt+h
@REM set ROOT=%1
@REM set CURRENT_DIR=%2

set HFS=C:/Program Files/Side Effects Software/Houdini 18.5.499
set MSVCDir=C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.16.27023
set PATH=%PATH%;%HFS%/bin;

set TARGET_VS_VERSION=14.16.27023
call "%VCVARS_LOCATION%/vcvarsall.bat" x64 -vcvars_ver=%TARGET_VS_VERSION%

@REM cd %ROOT%/%CURRENT_DIR%
start /w hcustom -s main.cpp
start /w main.exe
@REM call gplay sphere.bgeo
