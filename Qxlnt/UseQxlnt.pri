########################################
# UseQxlnt.pri
########################################
# Qxlnt https://github.com/j2doll/Qxlnt
# xlnt https://github.com/tfussell/xlnt
########################################
# MIT License
########################################

gcc{

message('Current compiler is gcc')
# QXLNT_PARENTPATH = ../xlnt/
# QXLNT_HEADERPATH = ../xlnt/include/
# QXLNT_SOURCEPATH = ../xlnt/source/
# LIBSTUDXML_PARENTPATH = ../xlnt/third-party/libstudxml/
# LIBSTUDXML_HEADERPATH = ../xlnt/third-party/libstudxml/ 
# LIBSTUDXML_SOURCEPATH = ../xlnt/third-party/libstudxml/  

DEFINES += \
XLNT_STATIC=1

include(../Qxlnt/Qxlnt.pri)	

}
linux-clang{

message('Current compiler is linux-clang')
# QXLNT_PARENTPATH = ../xlnt/
# QXLNT_HEADERPATH = ../xlnt/include/
# QXLNT_SOURCEPATH = ../xlnt/source/
# LIBSTUDXML_PARENTPATH = ../xlnt/third-party/libstudxml/
# LIBSTUDXML_HEADERPATH = ../xlnt/third-party/libstudxml/ 
# LIBSTUDXML_SOURCEPATH = ../xlnt/third-party/libstudxml/  

DEFINES += \
XLNT_STATIC=1

include(../Qxlnt/Qxlnt.pri)	

}
msvc{

message('Current compiler is Visual C++')

QXLNT_ROOT = ../Qxlnt/
QXLNT_PARENTPATH = ../xlnt/
QXLNT_HEADERPATH = ../xlnt/include/
QXLNT_SOURCEPATH = ../xlnt/source/

LIBSTUDXML_PARENTPATH = ../xlnt/third-party/libstudxml/
LIBSTUDXML_HEADERPATH = ../xlnt/third-party/libstudxml/
LIBSTUDXML_SOURCEPATH = ../xlnt/third-party/libstudxml/

UTFCPP_HEADERPATH = ../xlnt/third-party/utfcpp/

INCLUDEPATH += $${QXLNT_HEADERPATH}
INCLUDEPATH += $${LIBSTUDXML_HEADERPATH}
INCLUDEPATH += $${QXLNT_SOURCEPATH}
INCLUDEPATH += $${UTFCPP_HEADERPATH}

contains( DEFINES, XLNT_EXPORT ) {
include(../Qxlnt/Qxlnt.pri)	
}

}


