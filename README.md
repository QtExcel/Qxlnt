# Qxlnt

> *Read this in other languages: [English](README.md), :kr: [한국어](README.ko.md)*

![](markdown-data/Concept-QXlnt.jpg)

- Qxlnt is a helper project that allows xlnt to be used in Qt.
- xlnt is xlsx library that using C++14. See 'License and links' for more information.

### Why did you make it?
- xlnt is a excellent library for usinf xlsx Excel files. :+1: 
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

### Test
- :construction: I am currently in alpha testing, now.

#### Build Test Environment
- Success Case 1
	- Linux 3.10.0-693.17.1.el7.x86_64
	- gcc 7.3.1 20180303 (Red Hat 7.3.1-5)
	- Qt 5.9.2 (x64/64bit), qmake 3.1
- Success Case 2
	- Qt 5.9.5 (x86/32bit), MingW 5.3.0, qmake 3.1
	- gcc 5.3.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)
	- Microsoft Windows 10 x64

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
