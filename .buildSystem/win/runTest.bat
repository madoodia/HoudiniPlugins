REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #

REM # -----= Getting Inputs =---- #
set ROOT=%1
set FOLDER=%2
set FILE_NAME=%3
for %%i IN ("%FOLDER%") do (
set FILE_PATH=%%~pi
set BASE_NAME=%%~ni
)

set TARGET_NAME=%BASE_NAME%
REM # --------------------------- #

REM # echo "%ROOT%/build/lib%FOLDER%.a"
if exist "%ROOT%/build/lib%FOLDER%.lib"(
    cd %ROOT%/build/"%FOLDER%"_tst
)
if not exist "%ROOT%/build/lib%FOLDER%.lib"(
    cd %ROOT%/build/%FOLDER%/"%FOLDER%"_tst
)

"%FOLDER%"_tst.exe

REM # echo %ROOT%
REM # echo %FOLDER%
REM # echo %FILE_NAME%
REM # echo %TARGET_NAME%

REM # --------------------------- #
