########################################
# UseQxlnt.pri
########################################
# xlnt https://github.com/tfussell/xlnt
# Qxlnt https://github.com/j2doll/Qxlnt
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
DEFINES+=XLNT_IMPORT
CONFIG(debug, debug|release) {
	LIBS+=$${QXLNT_ROOT}debug/QXlnt.lib
} else {
	LIBS+=$${QXLNT_ROOT}release/QXlnt.lib
}
}


