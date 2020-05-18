REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #

REM DEV_LOCATION
set DEV_LOCATION=D:/madoodia/dev

REM MADAPI_LOCATION
set MADAPI_LOCATION=%DEV_LOCATION%/madAPI

REM SDKS_LOCATION
set SDKS_LOCATION=D:/madoodia/sdks

REM Qt5_DIR
set Qt5_DIR=%SDKS_LOCATION%/Qt5/lib/cmake

REM GTEST_LOCATION
set GTEST_LOCATION=%SDKS_LOCATION%/googletest
set GTEST_BASE_LOCATION=%SDKS_LOCATION%/repos/googletest

REM GLEW_LOCATION
set GLEW_LOCATION=%SDKS_LOCATION%/glew

REM STB_LOCATION
set STB_LOCATION=%SDKS_LOCATION%/stb

REM OPENCL_LOCATION
set OPENCL_LOCATION=%SDKS_LOCATION%/OpenCL

REM MAYA DEVKIT_LOCATION
REM set HFS="C:\Program Files\Side Effects Software\Houdini 18.0.348"


REM Adding Extra custom Definitions of the project
call %ROOT%/extra.bat
