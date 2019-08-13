# Qxlnt

> *Read this in other languages: [English](README.md), :kr: [한국어](README.ko.md)*

<p align="center"><img src="https://github.com/QtExcel/Qxlnt/raw/master/markdown-data/Concept-QXlnt.jpg"></p>

- Qxlnt는 xlnt가 Qt에서 사용될 수있게 해주는 도우미 프로젝트입니다.
- xlnt는 C++14를 사용하는 xlsx 라이브러리입니다. 자세한 정보는 '라이센스 및 링크'를 참조하십시오.

## 왜 만들었는가?

- xlnt는 xlsx Excel 파일을 사용하기에 훌륭한 라이브러리입니다. :+1:
- 그래서 xlnt를 Qt에서 사용하기 쉬운 방법을 찾고 있었습니다. 물론 cmake는 Qt와 호환되지만 사용하기가 쉽지 않습니다. 그래서 Qxlnt를 만들었습니다.

## 헬로우 월드 (HelloQXlnt)

:one: 엑셀(xlsx) 파일 쓰기

```cpp
#include <iostream>
#include <xlnt/xlnt.hpp>
#include <QCoreApplication>

int main(int argc, char **argv)
{     
    QCoreApplication a(argc, argv); // Qt 코드입니다.

    xlnt::workbook wb; // xlnt 코드입니다. 다같이 섞어서 쓰세요!
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

:two: 기존의 xlsx 스프레드 쉬트 읽기

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

## 주의 

### 선행 조건

- C++14 이상 버전이 필요합니다.
	- gcc 4.x (4.8 이하)는 지원되지 않습니다. 현재 (2018) gcc 버전은 7.x입니다.
	- Visual C++를 사용하는 경우 VS 2017 이상의 버전을 사용하십시오.
	- Visual Studio 2017은 Qt 5.9.1 또는 상위 버전을 지원합니다. Qt 5.10 이상의 버전을 사용하시기를 권장합니다.

## 테스트

| Travis CI |
| :-------: |
| [![Build Status](https://travis-ci.com/QtExcel/Qxlnt.svg?branch=master)](https://travis-ci.com/QtExcel/Qxlnt) |

- [테스트 환경](BuildEnv.md)을 참조하세요.

## 할 일
- 다양한 Qt 환경에서 테스트 :cloud:
- 유니코드 테스트 (파일명, 경로명, 자료) :zap:

## 라이센스 및 링크

- Qxlnt는 MIT 라이센스입니다. [https://github.com/QtExcel/Qxlnt](https://github.com/QtExcel/Qxlnt) 
- xlnt는 MIT 라이센스입니다. [https://github.com/tfussell/xlnt](https://github.com/tfussell/xlnt) 
- libstudxml는 MIT 라이센스입니다. [https://www.codesynthesis.com/projects/libstudxml/](https://www.codesynthesis.com/projects/libstudxml/)
- utfcpp는 Boost 소프트웨어 라이센스입니다. [http://utfcpp.sourceforge.net](http://utfcpp.sourceforge.net)

## :mailbox: 연락처
- 제게 이슈를 남겨주세요. [https://github.com/QtExcel/Qxlnt/issues](https://github.com/QtExcel/Qxlnt/issues)

## 유사한 프로젝트

### :star: <b>QXlsx</b> [https://github.com/QtExcel/QXlsx](https://github.com/QtExcel/QXlsx)

<p align="center"><img src="https://github.com/QtExcel/QXlsx/raw/master/markdown.data/QXlsx-Desktop.png"></p>

- QXlsx는 엑셀 파일(*.xlsx)을 읽고 쓰는 라이브러리입니다.
- QtXlsx가 더 이상 지원되지 않기 때문에(2014), QtXlsx에 기반한 새로운 프로젝트를 만들었습니다. (2017-)
- QXlsx는 개발 언어로 C++를 사용합니다. (Qt 사용)
- QXlsx는 정적 또는 동적 라이브러리를 사용하지 않아도 되도록 제작되었습니다.

### :star: <b>Qlibxlsxwriter</b> [https://github.com/QtExcel/Qlibxlsxwriter](https://github.com/QtExcel/Qlibxlsxwriter)

<p align="center"><img src="https://github.com/QtExcel/Qlibxlsxwriter/raw/master/markdown.data/logo.png"></p>

- Qlibxlsxwriter는 libxlsxwriter를 Qt에서 사용할 수있는 도우미 프로젝트입니다.
- libxlsxwriter는 Excel XLSX 파일을 만들기 위한 C 라이브러리 입니다. :+1:

### :star: <b>QSimpleXlsxWriter</b> [https://github.com/QtExcel/QSimpleXlsxWriter](https://github.com/QtExcel/QSimpleXlsxWriter)

- Use SimpleXlsxWriter in Qt.
- SimpleXlsxWriter is C++ library for creating XLSX files for MS Excel 2007 and above.

