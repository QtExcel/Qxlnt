#
# xlnt https://github.com/tfussell/xlnt
# Qxlnt https://github.com/j2doll/Qxlnt
#
# MIT License
#
# HelloQXlnt.pro

TARGET = HelloQxlnt

# QT -= gui
CONFIG += console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Set environment values for Qxlnt. You may use default values.
#
# QXLNT_PARENTPATH = ../xlnt/
# QXLNT_HEADERPATH = ../xlnt/include/
# QXLNT_SOURCEPATH = ../xlnt/source/
# LIBSTUDXML_PARENTPATH = ../xlnt/third-party/libstudxml/
# LIBSTUDXML_HEADERPATH = ../xlnt/third-party/libstudxml/ 
# LIBSTUDXML_SOURCEPATH = ../xlnt/third-party/libstudxml/  
include(../Qxlnt/Qxlnt.pri)

SOURCES += main.cpp

