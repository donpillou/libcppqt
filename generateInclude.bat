cd /d %~dp0
rmdir /S /Q include
cd qt
configure.exe -release -opensource -no-stl -no-qt3support -platform win32-msvc2010
set QTDIR=%~dp0\qt
rmdir /S /Q include
perl bin\syncqt -copy
mv include ..
perl bin\syncqt
cd ..
