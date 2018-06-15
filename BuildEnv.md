# Test Environment

> *Read this in other languages: [English](BuildEnv.md), :kr: [한국어](BuildEnv.ko.md)*

## Case 1
- Linux 3.10.0-693.17.1.el7.x86_64
- gcc 7.3.1 20180303 (Red Hat 7.3.1-5)
- Qt 5.9.2 (x64/64bit), qmake 3.1 
	- Actually Qt shared object is not needed. (type 'ldd Qxlnt.test')
- Qxlnt.test is perfect! No fault.

## Case 2
- Qt 5.9.5 (x86/32bit), MingW 5.3.0, qmake 3.1
- Microsoft Windows 10 x64
- gcc 5.3.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)
- Qxlnt.test has unicode error. This is mentioned in the xlnt [issue](https://github.com/tfussell/xlnt/issues/251).

## Case 3
- MSYS2 64bit  
	- MSYS_NT-10.0 DESKTOP-AGOCCFS 2.10.0(0.325/5/3) 2018-02-09 15:25 x86_64 Msys
- Microsoft Windows 10 x64
- Qt 5.10.1, QMake version 3.1
- Qxlnt.test is perfect! No fault.
