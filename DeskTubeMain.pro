TEMPLATE = subdirs
CONFIG += ordered

SUBDIRS += QuasarAppLib
SUBDIRS += App

App.file = $$PWD/App/DeskTube.pro
QuasarAppLib.file = $$PWD/QuasarAppLib/QuasarApp.pro
#include($$PWD/installer/installer.pri)
