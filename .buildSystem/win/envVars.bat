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
set HFS=C:\Program Files\Side Effects Software\Houdini 18.5.499
REM # Building with Visual Studio 2019 (CL version 14.2) is incompatible with houdini
REM set MSVCDir=C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.24.28314
REM # So have to build with CL 14.1
set MSVCDir=C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.16.27023

set PATH=%PATH%;%HFS%/bin;


REM Adding Extra custom Definitions of the project
call %ROOT%/extra.bat
