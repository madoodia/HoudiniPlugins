@ECHO OFF
REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #

REM Runing:
@REM in Windows run build.bat in VC Developer Command Prompt

set HFS=C:/Program Files/Side Effects Software/Houdini 18.5.499
set MSVCDir=C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.16.27023
set PATH=%PATH%;%HFS%/bin;

call "%VCVARS_LOCATION%/vcvarsall.bat" x64

start /w hcustom -s main.cpp
start /w main.exe
@REM call gplay sphere.bgeo
