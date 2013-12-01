libcppqt
========

libcppqt allows Qt to be included as Git submodule in your C++ software projects without requiring Qt to be installed or other pre-compiled binaries. The recommended way of using Qt is to install one of the huge pre-compiled Qt packages on your system and to use the Qt build system. Installing Qt is cumbersome, it hurts when you are trying to upgrade the Qt version you are relying on and it can be problematic if you are working on different software projects that require different versions of Qt. Compiling your own Qt build and using it without installing it is equally depressing (note, there is a required Windows-binary configure.exe in the repository.). And the Qt build system (qmake) is definitely not helping Qt's popularity.

Although the Qt C++ library is quite nice (except the meta object compiler stuff), the Qt SDK is packed with useless crap that promotes using questionable techniques or technologies. (QtDesigner, QML, touch stuff, mobile platforms, ...)

Somebody should port Qt to ordinary C++ build environments. I do not have the time to do this, but I came up with libcppqt.

libcppqt's Git repository consists of the Qt Git repository (included as submodule) and the include files required to use Qt. This allows Qt to be integrated into your project without using the Qt build system or having to integrate this build system into your build system. Instead, you have to configure your build system to compile and use the meta object compiler and qt modules by its own rules. I did not say using libcppqt is easy... but is it worth the effort if you like clean Git driven software development that does not involve millions of eccentric tools and scripts.

-- Donald Pillou


