# Qxlnt.pri

########################################
# NOTICE:
# Check your compiler version. we need c++14 or higher version.
# GCC has full support for the previous revision of the C++ standard,
#  which was published in 2014.
# See https://gcc.gnu.org/projects/cxx-status.html for more information.

CONFIG += c++14

########################################
# Setting for OS and Compiler

linux-g++ | linux-g++-64 | linux-g++-32{
# message('current type is linux-g++')
QMAKE_CFLAGS += -std=c99
DEFINES += \
XLNT_STATIC=1
}
linux-clang{
# message('Current compiler is linux-clang')
DEFINES += \
XLNT_STATIC=1
include(../Qxlnt/Qxlnt.pri)	
}
win32-g++{
# message('current type is win32-g++')
QMAKE_CFLAGS += -std=c99
# QMAKE_CXXFLAGS += -std=c++14
}
msvc{
# message('Current compiler is Visual C++')
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
}

########################################
# xlnt

isEmpty(QXLNT_PARENTPATH) {
    # message( 'QXLNT_PARENTPATH is empty. use default value.' )
    QXLNT_PARENTPATH = ../xlnt/
} else {
    # message( 'QXLNT_PARENTPATH :' )
    # message( $${QXLNT_PARENTPATH} )
}

isEmpty(QXLNT_HEADERPATH) {
    # message( 'QXLNT_HEADERPATH is empty. use default value.' )
    QXLNT_HEADERPATH = ../xlnt/include/
} else {
    # message( 'QXLNT_HEADERPATH :' )
    # message( $${QXLNT_HEADERPATH} )
}

isEmpty(QXLNT_SOURCEPATH) {
    # message( 'QXLNT_SOURCEPATH is empty. use default value.' )
    QXLNT_SOURCEPATH = ../xlnt/source/
} else {
    # message( 'QXLNT_SOURCEPATH :' )
    # message( $${QXLNT_SOURCEPATH} )
}

# EXE (MSVC)
contains( DEFINES, XLNT_IMPORT ) {
# nothing
}else{

INCLUDEPATH += .
INCLUDEPATH += $${QXLNT_PARENTPATH}

# xlnt header files and source files

INCLUDEPATH += $${QXLNT_HEADERPATH}

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/xlnt.hpp \
$${QXLNT_HEADERPATH}xlnt/xlnt_config.hpp

# cell

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/cell/cell.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/cell_reference.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/cell_type.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/comment.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/hyperlink.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/index_types.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/phonetic_run.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/rich_text.hpp \
$${QXLNT_HEADERPATH}xlnt/cell/rich_text_run.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}cell/cell.cpp \
$${QXLNT_SOURCEPATH}cell/cell_reference.cpp \
$${QXLNT_SOURCEPATH}cell/comment.cpp \
$${QXLNT_SOURCEPATH}cell/hyperlink.cpp \
$${QXLNT_SOURCEPATH}cell/index_types.cpp \
$${QXLNT_SOURCEPATH}cell/phonetic_run.cpp \
$${QXLNT_SOURCEPATH}cell/rich_text.cpp \
$${QXLNT_SOURCEPATH}cell/rich_text_run.cpp

# drawing

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/drawing/spreadsheet_drawing.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}drawing/spreadsheet_drawing.cpp

# packaging

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/packaging/ext_list.hpp \
$${QXLNT_HEADERPATH}xlnt/packaging/manifest.hpp \
$${QXLNT_HEADERPATH}xlnt/packaging/relationship.hpp \
$${QXLNT_HEADERPATH}xlnt/packaging/uri.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}packaging/ext_list.cpp \
$${QXLNT_SOURCEPATH}packaging/manifest.cpp \
$${QXLNT_SOURCEPATH}packaging/relationship.cpp \
$${QXLNT_SOURCEPATH}packaging/uri.cpp

# styles

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/styles/alignment.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/border.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/color.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/conditional_format.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/fill.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/font.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/format.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/number_format.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/protection.hpp \
$${QXLNT_HEADERPATH}xlnt/styles/style.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}styles/alignment.cpp \
$${QXLNT_SOURCEPATH}styles/border.cpp \
$${QXLNT_SOURCEPATH}styles/color.cpp \
$${QXLNT_SOURCEPATH}styles/conditional_format.cpp \
$${QXLNT_SOURCEPATH}styles/fill.cpp \
$${QXLNT_SOURCEPATH}styles/font.cpp \
$${QXLNT_SOURCEPATH}styles/format.cpp \
$${QXLNT_SOURCEPATH}styles/number_format.cpp \
$${QXLNT_SOURCEPATH}styles/protection.cpp \
$${QXLNT_SOURCEPATH}styles/style.cpp

# utils

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/utils/calendar.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/date.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/datetime.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/exceptions.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/numeric.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/optional.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/path.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/scoped_enum_hash.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/time.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/timedelta.hpp \
$${QXLNT_HEADERPATH}xlnt/utils/variant.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}utils/date.cpp \
$${QXLNT_SOURCEPATH}utils/datetime.cpp \
$${QXLNT_SOURCEPATH}utils/exceptions.cpp \
$${QXLNT_SOURCEPATH}utils/path.cpp \
$${QXLNT_SOURCEPATH}utils/time.cpp \
$${QXLNT_SOURCEPATH}utils/timedelta.cpp \
$${QXLNT_SOURCEPATH}utils/variant.cpp

# workbook

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/workbook/calculation_properties.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/document_security.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/external_book.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/metadata_property.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/named_range.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/streaming_workbook_reader.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/streaming_workbook_writer.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/theme.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/workbook.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/workbook_view.hpp \
$${QXLNT_HEADERPATH}xlnt/workbook/worksheet_iterator.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}workbook/named_range.cpp \
$${QXLNT_SOURCEPATH}workbook/streaming_workbook_reader.cpp \
$${QXLNT_SOURCEPATH}workbook/streaming_workbook_writer.cpp \
$${QXLNT_SOURCEPATH}workbook/workbook.cpp \
$${QXLNT_SOURCEPATH}workbook/worksheet_iterator.cpp

# worksheet

HEADERS += \
$${QXLNT_HEADERPATH}xlnt/worksheet/cell_iterator.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/cell_vector.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/column_properties.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/header_footer.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/major_order.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/page_margins.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/page_setup.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/pane.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/phonetic_pr.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/print_options.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/range.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/range_iterator.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/range_reference.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/row_properties.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/selection.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/sheet_format_properties.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/sheet_pr.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/sheet_protection.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/sheet_view.hpp \
$${QXLNT_HEADERPATH}xlnt/worksheet/worksheet.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}worksheet/cell_iterator.cpp \
$${QXLNT_SOURCEPATH}worksheet/cell_vector.cpp \
$${QXLNT_SOURCEPATH}worksheet/header_footer.cpp \
$${QXLNT_SOURCEPATH}worksheet/page_margins.cpp \
$${QXLNT_SOURCEPATH}worksheet/page_setup.cpp \
$${QXLNT_SOURCEPATH}worksheet/phonetic_pr.cpp \
$${QXLNT_SOURCEPATH}worksheet/range.cpp \
$${QXLNT_SOURCEPATH}worksheet/range_iterator.cpp \
$${QXLNT_SOURCEPATH}worksheet/range_reference.cpp \
$${QXLNT_SOURCEPATH}worksheet/sheet_protection.cpp \
$${QXLNT_SOURCEPATH}worksheet/worksheet.cpp

# detail (xlnt/source/detail)

INCLUDEPATH += $${QXLNT_SOURCEPATH} #for detail

HEADERS += \
$${QXLNT_SOURCEPATH}detail/binary.hpp \
$${QXLNT_SOURCEPATH}detail/constants.hpp \
$${QXLNT_SOURCEPATH}detail/default_case.hpp \
$${QXLNT_SOURCEPATH}detail/unicode.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}detail/constants.cpp \
$${QXLNT_SOURCEPATH}detail/unicode.cpp

# detail/cryptography

HEADERS += \
$${QXLNT_SOURCEPATH}detail/cryptography/aes.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/base64.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/cipher.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/compound_document.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/encryption_info.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/hash.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/sha.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/value_traits.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/xlsx_crypto_consumer.hpp \
$${QXLNT_SOURCEPATH}detail/cryptography/xlsx_crypto_producer.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}detail/cryptography/aes.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/base64.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/compound_document.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/encryption_info.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/hash.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/sha.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/sha1.c \
$${QXLNT_SOURCEPATH}detail/cryptography/sha512.c \
$${QXLNT_SOURCEPATH}detail/cryptography/xlsx_crypto_consumer.cpp \
$${QXLNT_SOURCEPATH}detail/cryptography/xlsx_crypto_producer.cpp

# detail/external

HEADERS += \
$${QXLNT_SOURCEPATH}detail/external/include_libstudxml.hpp \
$${QXLNT_SOURCEPATH}detail/external/include_windows.hpp

# detail/header_footer

HEADERS += \
$${QXLNT_SOURCEPATH}detail/header_footer/header_footer_code.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}detail/header_footer/header_footer_code.cpp

# detail/implementations

HEADERS += \
$${QXLNT_SOURCEPATH}detail/implementations/cell_impl.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/conditional_format_impl.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/formatting_record.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/format_impl.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/hyperlink_impl.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/stylesheet.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/style_impl.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/workbook_impl.hpp \
$${QXLNT_SOURCEPATH}detail/implementations/worksheet_impl.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}detail/implementations/cell_impl.cpp

# detail/number_format

HEADERS += \
$${QXLNT_SOURCEPATH}detail/number_format/number_formatter.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}detail/number_format/number_formatter.cpp

# detail/serialization

HEADERS += \
$${QXLNT_SOURCEPATH}detail/serialization/custom_value_traits.hpp \
$${QXLNT_SOURCEPATH}detail/serialization/excel_thumbnail.hpp \
$${QXLNT_SOURCEPATH}detail/serialization/open_stream.hpp \
$${QXLNT_SOURCEPATH}detail/serialization/vector_streambuf.hpp \
$${QXLNT_SOURCEPATH}detail/serialization/xlsx_consumer.hpp \
$${QXLNT_SOURCEPATH}detail/serialization/xlsx_producer.hpp \
$${QXLNT_SOURCEPATH}detail/serialization/zstream.hpp

SOURCES += \
$${QXLNT_SOURCEPATH}detail/serialization/custom_value_traits.cpp \
$${QXLNT_SOURCEPATH}detail/serialization/open_stream.cpp \
$${QXLNT_SOURCEPATH}detail/serialization/vector_streambuf.cpp \
$${QXLNT_SOURCEPATH}detail/serialization/xlsx_consumer.cpp \
$${QXLNT_SOURCEPATH}detail/serialization/xlsx_producer.cpp \
$${QXLNT_SOURCEPATH}detail/serialization/zstream.cpp

########################################
# libstudxml

isEmpty(LIBSTUDXML_PARENTPATH) {
    # message( 'LIBSTUDXML_PARENTPATH is empty. use default value.' )
    LIBSTUDXML_PARENTPATH = ../xlnt/third-party/libstudxml/
} else {
    # message( 'LIBSTUDXML_PARENTPATH :' )
    # message( $${LIBSTUDXML_PARENTPATH} )
}

isEmpty(LIBSTUDXML_HEADERPATH) {
    # message( 'LIBSTUDXML_HEADERPATH is empty. use default value.' )
    LIBSTUDXML_HEADERPATH = ../xlnt/third-party/libstudxml/
} else {
    # message( 'LIBSTUDXML_HEADERPATH :' )
    # message( $${LIBSTUDXML_HEADERPATH} )
}

isEmpty(LIBSTUDXML_SOURCEPATH) {
    # message( 'LIBSTUDXML_SOURCEPATH is empty. use default value.' )
    LIBSTUDXML_SOURCEPATH = ../xlnt/third-party/libstudxml/
} else {
    # message( 'LIBSTUDXML_SOURCEPATH :' )
    # message( $${LIBSTUDXML_SOURCEPATH} )
}

# libstudxml header files and source files

INCLUDEPATH += $${LIBSTUDXML_HEADERPATH}

HEADERS += \
$${LIBSTUDXML_HEADERPATH}libstudxml/content.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/exception.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/forward.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/parser.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/qname.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/serializer.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/value-traits.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/version.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/version.hxx.in

SOURCES += \
$${LIBSTUDXML_SOURCEPATH}libstudxml/parser.cxx \
$${LIBSTUDXML_SOURCEPATH}libstudxml/qname.cxx \
$${LIBSTUDXML_SOURCEPATH}libstudxml/serializer.cxx \
$${LIBSTUDXML_SOURCEPATH}libstudxml/value-traits.cxx

# config

HEADERS += \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/config.h
$${LIBSTUDXML_HEADERPATH}libstudxml/details/config.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/details/export.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/details/post.hxx
$${LIBSTUDXML_HEADERPATH}libstudxml/details/pre.hxx

# expat

HEADERS += \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/ascii.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/asciitab.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/config.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/iasciitab.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/internal.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/latin1tab.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/nametab.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/utf8tab.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/xmlrole.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/xmltok.h \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/expat/xmltok_impl.h

SOURCES += \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/expat/xmlparse.c \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/expat/xmlrole.c \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/expat/xmltok.c \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/expat/xmltok_impl.c \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/expat/xmltok_ns.c

# genx

HEADERS += \
$${LIBSTUDXML_HEADERPATH}libstudxml/details/genx/genx.h

SOURCES += \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/genx/genx.c \
$${LIBSTUDXML_SOURCEPATH}libstudxml/details/genx/char-props.c

########################################
# utfcpp

isEmpty(UTFCPP_HEADERPATH) {
    # message( 'UTFCPP_HEADERPATH is empty. use default value.' )
    UTFCPP_HEADERPATH = ../xlnt/third-party/utfcpp/
} else {
    # message( 'UTFCPP_HEADERPATH :' )
    # message( $${UTFCPP_HEADERPATH} )
}

INCLUDEPATH += $${UTFCPP_HEADERPATH}

HEADERS += \
$${UTFCPP_HEADERPATH}utf8.h \
$${UTFCPP_HEADERPATH}utf8/checked.h \
$${UTFCPP_HEADERPATH}utf8/core.h \
$${UTFCPP_HEADERPATH}utf8/cpp11.h \
$${UTFCPP_HEADERPATH}utf8/unchecked.h

########################################
# miniz

isEmpty(MINIZ_PATH) {
    MINIZ_PATH = ../xlnt/third-party/miniz/
} else {
}

INCLUDEPATH += $${MINIZ_PATH}

HEADERS += $${MINIZ_PATH}miniz.h
SOURCES += $${MINIZ_PATH}miniz.c

} # contains( DEFINES, XLNT_IMPORT ) {} else {}


