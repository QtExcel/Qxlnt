#
# Qxlnt.pro
#
# xlnt https://github.com/tfussell/xlnt
# Qxlnt https://github.com/j2doll/Qxlnt
# 
# MIT License

TARGET = Qxlnt

TEMPLATE = lib

# DEFINES += 

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# NOTE:
# Check your compiler version.
# GCC has full support for the previous revision of the C++ standard, which was published in 2014.
# https://gcc.gnu.org/projects/cxx-status.html
CONFIG += c++14

include(./Qxlnt.pri)

# unix {
#     target.path = /usr/lib
#     INSTALLS += target
# }

