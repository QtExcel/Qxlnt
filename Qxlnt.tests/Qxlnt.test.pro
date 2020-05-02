# Qxlnt.test.pro

TARGET = Qxlnt.test

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

msvc:DEFINES+=XLNT_IMPORT

include(../Qxlnt/Qxlnt.pri)

msvc{
# message('Visual C++ EXE TYPE')
CONFIG(debug, debug|release) {
LIBS+=$${QXLNT_ROOT}debug/QXlnt.lib
QMAKE_POST_LINK += copy ..\Qxlnt\debug\Qxlnt.dll .\debug\
} else {
LIBS+=$${QXLNT_ROOT}release/QXlnt.lib
QMAKE_POST_LINK += copy ..\Qxlnt\release\Qxlnt.dll .\release\
}
}

########################################
# source code 

# set XLNT_TEST_DATA_DIR value for test data
DEFINES += \
XLNT_TEST_DATA_DIR=$$PWD/../xlnt/tests/data/

# default include path fo test
INCLUDEPATH += \
../xlnt/tests/

SOURCES += \
../xlnt/tests/runner.cpp

# cell

SOURCES += \
../xlnt/tests/cell/cell_test_suite.cpp \
../xlnt/tests/cell/index_types_test_suite.cpp \
../xlnt/tests/cell/rich_text_test_suite.cpp 

# detail

SOURCES += \
../xlnt/tests/detail/numeric_util_test_suite.cpp

# drawing

SOURCES += \
../xlnt/tests/drawing/drawing_test_suite.cpp

# helpers

HEADERS += \
../xlnt/tests/helpers/assertions.hpp \
../xlnt/tests/helpers/path_helper.hpp  \
../xlnt/tests/helpers/temporary_directory.hpp \
../xlnt/tests/helpers/temporary_file.hpp \
../xlnt/tests/helpers/test_suite.hpp \
../xlnt/tests/helpers/timing.hpp \
../xlnt/tests/helpers/xml_helper.hpp

SOURCES += \
../xlnt/tests/helpers/test_suite.cpp

# styles

SOURCES += \
../xlnt/tests/styles/alignment_test_suite.cpp \
../xlnt/tests/styles/color_test_suite.cpp \
../xlnt/tests/styles/conditional_format_test_suite.cpp \
../xlnt/tests/styles/fill_test_suite.cpp \
../xlnt/tests/styles/number_format_test_suite.cpp \
../xlnt/tests/styles/protection_test_suite.cpp \
../xlnt/tests/styles/style_test_suite.cpp

# utils

SOURCES += \
../xlnt/tests/utils/datetime_test_suite.cpp \
../xlnt/tests/utils/helper_test_suite.cpp \
../xlnt/tests/utils/optional_tests.cpp \
../xlnt/tests/utils/path_test_suite.cpp \
../xlnt/tests/utils/timedelta_test_suite.cpp \
../xlnt/tests/utils/variant_tests.cpp

# workbook

SOURCES += \
../xlnt/tests/workbook/named_range_test_suite.cpp \
../xlnt/tests/workbook/serialization_test_suite.cpp \
../xlnt/tests/workbook/workbook_test_suite.cpp

# worksheet

SOURCES += \
../xlnt/tests/worksheet/page_setup_test_suite.cpp \
../xlnt/tests/worksheet/range_test_suite.cpp \
../xlnt/tests/worksheet/worksheet_test_suite.cpp

