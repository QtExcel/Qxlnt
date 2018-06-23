# Qxlnt

> *Read this in other languages: [English](README.md), :kr: [한국어](README.ko.md)*

![](markdown-data/Concept-QXlnt.jpg)

[![Built-with-Qt5-Badge](https://img.shields.io/badge/Built%20with-Qt5-green.svg)](https://www.qt.io/) [![Built-with-cpp-Badge](https://img.shields.io/badge/Built%20with-C%2B%2B-green.svg)](https://isocpp.org/) [![Xlsx-Badge](https://img.shields.io/badge/Library-xlsx-blue.svg)](https://www.ecma-international.org/publications/standards/Ecma-376.htm)

- Qxlnt is a helper project that allows xlnt to be used in Qt.
- xlnt is xlsx library that using C++14. See 'License and links' for more information.

### Why did you make it?
- xlnt is a excellent library for using xlsx Excel files. :+1:
- I was looking for a way to make it easy to use in Qt. Of course, cmake is compatible with Qt, but it is not convenient to use. So I created Qxlnt.

### Hello World
```cpp
#include <iostream>
#include <xlnt/xlnt.hpp>
#include <QCoreApplication>

int main(int argc, char **argv)
{     
    QCoreApplication a(argc, argv); // It is a Qt code.

    xlnt::workbook wb; // It is a xlnt code. Mix it together!
    xlnt::worksheet ws = wb.active_sheet();
    ws.cell("A1").value(5);
    ws.cell("B2").value("string data");
    ws.cell("C3").formula("=RAND()");
    ws.merge_cells("C3:C4");
    ws.freeze_panes("B2");
    wb.save("example.xlsx");

    return 0;
}
```

### :notebook: Notice
- C++14 or higher version is required.
	- gcc 4.x(4.8 or below) is not supported. Current(2018) gcc version is 7.x.
	- If you use Visual C++, then use VS 2017 or higher version.

### :cop: Test
- :construction: Currently in alpha testing, now.

#### Test Environment
- See [Test Environment](BuildEnv.md)

### :beginner: To Do
- :umbrella: Test on Visual C++ and other C++ compilers.
- :cloud: Testing in various Qt environments.
- :zap: Unicode Test (filename, file path, data value)

### :link: License and links
- MIT License
- Qxlnt, j2doll, https://github.com/j2doll/Qxlnt
- xlnt, Thomas Fussell, https://github.com/tfussell/xlnt
- libstudxml, Code Synthesis Tools https://www.codesynthesis.com/projects/libstudxml/
- utfcpp, Nemanja Trifunovic http://utfcpp.sourceforge.net/

### :mailbox: Contact
- Please leave an issue to me. https://github.com/j2doll/Qxlnt/issues
- Hi! I'm j2doll (aka Jay Two). My native language is not English and my English is not fluent. Please, use EASY English. :-)

### Similar projects I'm going on
- QXlsx [https://github.com/j2doll/QXlsx](https://github.com/j2doll/QXlsx)
	- QXlsx is excel file(*.xlsx) reader/writer library.
		- Because QtXlsx is no longer supported(2014), I created a new project that is based on QtXlsx. (2017-)
		- Development language of QXlsx is C++. (with Qt 5.x)
		- You don't need to use static library or dynamic shared object using QXlsx.
