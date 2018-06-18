# 테스트 환경

> *Read this in other languages: [English](BuildEnv.md), :kr: [한국어](BuildEnv.ko.md)*

## 케이스 1
- Linux 3.10.0-693.17.1.el7.x86_64
- gcc (GCC) 7.3.1 20180303 (Red Hat 7.3.1-5)
- Qt 5.9.2 (x64), qmake 3.1
	- 사실 Qt shared object 는 필요없음. ('ldd Qxlnt.test'를 쳐보세요)
- Qxlnt.test 완벽함. 문제 없음. :smiley:

## 케이스 2
- Qt 5.9.5 (x86/32bit), MingW 5.3.0, qmake 3.1
- gcc 5.3.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)
- Microsoft Windows 10 x64
- Qxlnt.test가 유니코드 오류가 있음. xlnt의 [이슈](https://github.com/tfussell/xlnt/issues/251)에서 언급하였음.

## 케이스 3
- MSYS2 64bit
	- MSYS_NT-10.0 DESKTOP-AGOCCFS 2.10.0(0.325/5/3) 2018-02-09 15:25 x86_64 Msys
- Microsoft Windows 10 x64
- Qt 5.10.1, QMake version 3.1
- Qxlnt.test 완벽함. 문제 없음. :smiley:
	- 만약 윈도우즈에서 gcc를 사용하시려면, MingW 대신 MSYS2를 사용하세요.

