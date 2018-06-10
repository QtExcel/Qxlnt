# Qxlnt

> *Read this in other languages: [English](README.md), :kr: [한국어](README.ko.md)*

![](markdown-data/Concept-QXlnt.jpg)

- Qxlnt는 xlnt가 Qt에서 사용될 수있게 해주는 도우미 프로젝트입니다.
- xlnt는 C++14를 사용하는 xlsx 라이브러리입니다. 라이센스 및 링크를 참조하십시오.

### 왜 만들었는가?
- xlnt는 xlsx Excel 파일을 사용하기에 훌륭한 라이브러리입니다. :+1: 
- 그래서 xlnt를 Qt에서 사용하기 쉬운 방법을 찾고 있었습니다. 물론 cmake는 Qt와 호환되지만 사용하기가 쉽지 않습니다. 그래서 Qxlnt를 만들었습니다.

### 헬로우 월드
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

### 주의
- C++14 이상 버전이 필요합니다. 
	- gcc 4.x (4.8 이하)는 지원되지 않습니다. 현재 (2018) gcc 버전은 7.x입니다.
	- Visual C++를 사용하는 경우 VS 2017 이상의 버전을 사용하십시오.

### 테스트
- :construction: 나는 현재 알파 테스트 중입니다.

#### 테스트 빌드 환경
- 성공 케이스 1
	- Linux 3.10.0-693.17.1.el7.x86_64
	- gcc (GCC) 7.3.1 20180303 (Red Hat 7.3.1-5)
	- Qt 5.9.2 (x64), qmake 3.1
- 성공 케이스 2
	- Qt 5.9.5 (x86/32bit), MingW 5.3.0, qmake 3.1
	- gcc 5.3.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)
	- Microsoft Windows 10 x64

### :beginner: 할 일
- Qxlnt를 사용하여 xlnt 테스트를 실행 하기
- Visual C++ 및 기타 C++ 컴파일러에서 테스트하십시오.
- 다양한 Qt 환경에서 테스트

### 라이센스 및 링크
- MIT 라이센스
- Qxlnt, j2doll, https://github.com/j2doll/Qxlnt
- xlnt, Thomas Fussell, https://github.com/tfussell/xlnt
- libstudxml, Code Synthesis Tools https://www.codesynthesis.com/projects/libstudxml/
- utfcpp, Nemanja Trifunovic http://utfcpp.sourceforge.net/

### 연락처
- 제게 이슈를 남겨주세요. https://github.com/j2doll/Qxlnt/issues
