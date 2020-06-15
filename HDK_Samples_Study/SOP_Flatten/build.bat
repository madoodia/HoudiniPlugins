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
set SESI_TAGINFO="Built by: madoodia.com"
call hcustom SOP_Flatten.C

REM after running the .dll file will be located to the path: $USER\houdini18.0\dso
REM then you should put these files to related directories
REM Copy SOP_hdk_flatten.svg to $HOME/houdiniX.Y/config/Icons.
REM Copy hdk_flatten.txt to $HOME/houdiniX.Y/help/nodes/sop.
REM Copy SOP_hdk_flatten.png to $HOME/houdiniX.Y/help/nodes/sop.