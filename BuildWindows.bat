@ECHO OFF
MKDIR .\dependencies\Build\Debug 
MKDIR .\dependencies\Build\Release

SET VS_COMMAND="%VS120COMNTOOLS%..\..\VC\vcvarsall.bat"
REM cd /d %VS_ROOT%
CALL %VS_COMMAND%

CD .\dependencies\Build\Debug 
CALL cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Debug ../.. -DFORCE_STATIC_VCRT=OFF
CALL nmake

CD ..\Release
CALL cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release ../.. -DFORCE_STATIC_VCRT=OFF
CALL nmake