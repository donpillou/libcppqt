cd /d %~dp0
rmdir /S /Q include
pushd ..\qt
configure.exe -release -opensource -no-stl -no-qt3support -platform win32-msvc2010
set QTDIR=%~dp0\..\qt
rmdir /S /Q include
perl bin\syncqt -copy
popd
mv ..\qt\include .
copy /Y ..\qt\src\corelib\global\qconfig.h include\QtCore\qconfig.h
md src
md src\corelib
md src\corelib\global
copy /Y ..\qt\src\corelib\global\qconfig.cpp src\corelib\global\qconfig.cpp
md src\tools
md src\tools\uic
copy /Y ..\src\tools\uic\qclass_lib_map.h src\tools\uic\qclass_lib_map.h
rem pushd ..\qt
rem perl bin\syncqt
rem popd
echo done
pause