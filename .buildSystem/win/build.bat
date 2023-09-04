@ECHO OFF
REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #


SETLOCAL

REM set file=C:\Users\l72rugschiri\Desktop\fs.cfg
REM FOR %%i IN ("%file%") DO (
REM ECHO filedrive=%%~di
REM ECHO filepath=%%~pi
REM ECHO filename=%%~ni
REM ECHO fileextension=%%~xi
REM )

REM # -----= Getting Inputs =---- #
@REM VS 2017
@REM set TARGET_VS_VERSION=14.16.27023
@REM VS 2019
set TARGET_VS_VERSION=14.29.30133

call "%VCVARS_LOCATION%/vcvarsall.bat" x64 -vcvars_ver=%TARGET_VS_VERSION%

set ROOT=%1
set FOLDER=%2
set FILE_NAME=%3

for %%i IN ("%FOLDER%") do (
set FILE_PATH=%%~pi
set BASE_NAME=%%~ni
)

set TARGET_NAME=%BASE_NAME%

REM # ------= Include Envs =----- #
set LINUX_DIR=%~dp0
call %LINUX_DIR%envVars.bat
REM # --------------------------- #

REM # --------- Common ---------- #
cd %ROOT%

if not exist "build" ( 
    mkdir "build"
)

cd "%ROOT%/build"

cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%EXTRA_PREFIX_PATH% "%ROOT%/%FOLDER%"
cmake --build .

REM # ---= Workspace Project =--- #
REM # --------- Release --------- #
if "%FOLDER%" equ "." ( copy src/%TARGET_NAME%.%OUTPUT_FILE_EXTENSION% %ROOT%)
REM # --------------------------- #

REM # ----= Folder Project =----- #
REM # -----= File Project =------ #
REM # --------- Release --------- #
if not "%FOLDER%" equ "." ( copy %TARGET_NAME%.%OUTPUT_FILE_EXTENSION% "%ROOT%\load\dso")
REM # --------------------------- #

REM # ---= Running EXE File =---- #
cd %ROOT%

if %OUTPUT_FILE_EXTENSION% equ "exe" (
    if exist %ROOT%/%FOLDER%/%TARGET_NAME%.%OUTPUT_FILE_EXTENSION% (
        %ROOT%/%FOLDER%/%TARGET_NAME%.%OUTPUT_FILE_EXTENSION%
        REM %TARGET_NAME%.%OUTPUT_FILE_EXTENSION% --gtest_output="xml:./$TARGET_NAME.xml"
    )
)


if exist "build" (
    if %NEED_BUILD% equ 1 (
        rmdir /s /q build
    )
)
REM # --------------------------- #