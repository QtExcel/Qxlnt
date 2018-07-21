#
# Qxlnt.test.pro
#
# xlnt https://github.com/tfussell/xlnt
# Qxlnt https://github.com/j2doll/Qxlnt
#
# MIT License
#

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

# Set environment values for Qxlnt. You may use default values.

include(../Qxlnt/UseQxlnt.pri)

# set XLNT_TEST_DATA_DIR value for test data
DEFINES += \
XLNT_TEST_DATA_DIR=$$PWD/../xlnt/tests/data/

# default include path fo test
INCLUDEPATH += \
../xlnt/tests/

SOURCES += \
../xlnt/tests/runner.cpp

HEADERS += \
../xlnt/tests/cell/cell_test_suite.hpp \
../xlnt/tests/cell/index_types_test_suite.hpp \
../xlnt/tests/cell/rich_text_test_suite.hpp

HEADERS += \
../xlnt/tests/helpers/assertions.hpp \
../xlnt/tests/helpers/path_helper.hpp  \
../xlnt/tests/helpers/temporary_directory.hpp \
../xlnt/tests/helpers/temporary_file.hpp \
../xlnt/tests/helpers/test_suite.hpp \
../xlnt/tests/helpers/timing.hpp \
../xlnt/tests/helpers/xml_helper.hpp

HEADERS += \
../xlnt/tests/styles/alignment_test_suite.hpp \
../xlnt/tests/styles/color_test_suite.hpp \
../xlnt/tests/styles/fill_test_suite.hpp \
../xlnt/tests/styles/number_format_test_suite.hpp

HEADERS += \
../xlnt/tests/utils/datetime_test_suite.hpp \
../xlnt/tests/utils/helper_test_suite.hpp \
../xlnt/tests/utils/path_test_suite.hpp \
../xlnt/tests/utils/timedelta_test_suite.hpp

HEADERS += \
../xlnt/tests/workbook/named_range_test_suite.hpp \
../xlnt/tests/workbook/serialization_test_suite.hpp \
../xlnt/tests/workbook/workbook_test_suite.hpp

HEADERS += \
../xlnt/tests/worksheet/page_setup_test_suite.hpp \
../xlnt/tests/worksheet/range_test_suite.hpp \
../xlnt/tests/worksheet/worksheet_test_suite.hpp




