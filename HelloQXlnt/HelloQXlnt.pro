# HelloQXlnt.pro

TARGET = HelloQxlnt

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

########################################
# Set environment values for Qxlnt. You may use default values.

msvc{
message('Visual C++ TYPE')
DEFINES+=XLNT_IMPORT
INCLUDEPATH += ../xlnt/include
} else {
message('non-Visual C++ TYPE')
include(../Qxlnt/Qxlnt.pri)
}

msvc:CONFIG(debug, debug|release) {
LIBS += -L../QXlnt/debug
LIBS += -lQxlnt
} else {
LIBS += -L../QXlnt/release
LIBS += -lQxlnt
}

msvc{
message('[TODO:] Copy QXlnt/[debug][release]/Qxlnt.dll to your application directory.')
} else {
}

########################################
# source code of application 

# HEADERS += hello.h 

SOURCES += \
main.cpp

