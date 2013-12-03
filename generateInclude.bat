cd /d %~dp0
rmdir /S /Q include
cd qt
configure.exe -release -opensource -no-stl -no-qt3support -platform win32-msvc2010
set QTDIR=%~dp0\qt
rmdir /S /Q include
perl bin\syncqt -copy
mv include ..
copy /Y src\corelib\global\qconfig.h ..\include\QtCore\qconfig.h
md ..\src
md ..\src\corelib
md ..\src\corelib\global
copy /Y src\corelib\global\qconfig.cpp ..\src\corelib\global\qconfig.cpp
md ..\src\tools
md ..\src\tools\uic
copy /Y src\tools\uic\qclass_lib_map.h ..\src\tools\uic\qclass_lib_map.h
perl bin\syncqt
cd ..
echo done
pause