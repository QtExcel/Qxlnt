# Qxlnt

> *Read this in other languages: [English](README.md), :kr: [한국어](README.ko.md)*

<p align="center"><img src="https://github.com/QtExcel/Qxlnt/raw/master/markdown-data/Concept-QXlnt.jpg"></p>

- Qxlnt is a helper project that allows xlnt to be used in Qt.
- xlnt is xlsx library that using C++14. See 'License and links' for more information.

## Why did you make it?

- xlnt is a excellent library for using xlsx Excel files. :+1:
- I was looking for a way to make it easy to use in Qt. Of course, cmake is compatible with Qt, but it is not convenient to use. So I created Qxlnt.

## Hello World (HelloQXlnt)

:one: Writing a excel(xlsx) file

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

:two: Reading from an existing xlsx spread sheet.

```cpp
// https://tfussell.gitbooks.io/xlnt/content/docs/introduction/Examples.html

xlnt::workbook wb;
wb.load("/home/timothymccallum/test.xlsx");
auto ws = wb.active_sheet();
std::clog << "Processing spread sheet" << std::endl;
for (auto row : ws.rows(false)) 
{ 
    for (auto cell : row) 
    { 
        std::clog << cell.to_string() << std::endl;
    }
}
std::clog << "Processing complete" << std::endl;
```

## Notice

### Prerequisite

- C++14 or higher version is required.
	- gcc 4.x(4.8 or below) is not supported. Current(2018) gcc version is 7.x.
	- If you use Visual C++, then use VS 2017 or higher version.
	- Visual Studio 2017 supports Qt 5.9.1 or higher. Qt 5.10 or later is recommended.

## Test

| Travis CI |
| :-------: |
| [![Build Status](https://travis-ci.com/QtExcel/Qxlnt.svg?branch=master)](https://travis-ci.com/QtExcel/Qxlnt) |

- See [tested environments](BuildEnv.md)

## To Do
- Testing in various Qt environments. :cloud:
- Unicode Test (filename, file path, data value) :umbrella:

## License and links
- Qxlnt is under MIT License. [https://github.com/QtExcel/Qxlnt](https://github.com/QtExcel/Qxlnt)
- xlnt is under MIT License. [https://github.com/tfussell/xlnt](https://github.com/tfussell/xlnt) 
- libstudxml is under MIT License. [https://www.codesynthesis.com/projects/libstudxml/](https://www.codesynthesis.com/projects/libstudxml/)
- utfcpp is under Boost Software License. [http://utfcpp.sourceforge.net](http://utfcpp.sourceforge.net)

## :mailbox: Contact
- Please leave an issue to me. [https://github.com/QtExcel/Qxlnt/issues](https://github.com/QtExcel/Qxlnt/issues) 
- Hi! I'm j2doll (aka Jay Two). My native language is not English and my English is not fluent. Please, use EASY English. :-)

## Similar projects

### :star: <b>QXlsx</b> [https://github.com/QtExcel/QXlsx](https://github.com/QtExcel/QXlsx)

<p align="center"><img src="https://github.com/QtExcel/QXlsx/raw/master/markdown.data/QXlsx-Desktop.png"></p>

- QXlsx is excel file(*.xlsx) reader/writer library.
- Because QtXlsx is no longer supported(2014), I created a new project that is based on QtXlsx. (2017-)
- Development language of QXlsx is C++. (with Qt)
- You don't need to use static library or dynamic shared object using QXlsx.

### :star: <b>Qlibxlsxwriter</b> [https://github.com/QtExcel/Qlibxlsxwriter](https://github.com/QtExcel/Qlibxlsxwriter)

<p align="center"><img src="https://github.com/QtExcel/Qlibxlsxwriter/raw/master/markdown.data/logo.png"></p>

- Qlibxlsxwriter is a helper project that allows libxlsxwriter to be used in Qt.
- libxlsxwriter is a C library for creating Excel XLSX files. :+1:

### :star: <b>QSimpleXlsxWriter</b> [https://github.com/QtExcel/QSimpleXlsxWriter](https://github.com/QtExcel/QSimpleXlsxWriter)

- Use SimpleXlsxWriter in Qt.
- SimpleXlsxWriter is C++ library for creating XLSX files for MS Excel 2007 and above.
