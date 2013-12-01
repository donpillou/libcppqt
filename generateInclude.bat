cd /d %~dp0
rmdir /S /Q include
cd qt
configure.exe -release -opensource -no-stl -no-qt3support -platform win32-msvc2010
set QTDIR=%~dp0\qt
rmdir /S /Q include
perl bin\syncqt -copy
mv include ..
copy /Y src\corelib\global\qconfig.h ..\include\QtCore\qconfig.h
rem md ..\src
rem md ..\src\corelib
rem md ..\src\corelib\global
rem copy /Y src\corelib\global\qconfig.cpp ..\src\corelib\global\qconfig.cpp
perl bin\syncqt
cd ..
