# Tested Environments

## Case 1

```
Linux 3.10.0-693.17.1.el7.x86_64
gcc 7.3.1 20180303 (Red Hat 7.3.1-5)
Qt 5.9.2 (x64/64bit), qmake 3.1 
```

- Actually Qt shared object is not needed. (type 'ldd Qxlnt.test')
- Success to build. :smiley:
- Success to run hello world. :smiley:
- Success to run Qxlnt.test. :smiley:

## Case 2
- MingW

```
Qt 5.9.5 (x86/32bit), MingW 5.3.0, qmake 3.1
Microsoft Windows 10 x64
gcc 5.3.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)
```

- Success to build. :smiley:
- Qxlnt.test has unicode error. :rage: This is mentioned in the xlnt [issue](https://github.com/tfussell/xlnt/issues/251).

## Case 3
- MSYS2 64bit

```
MSYS_NT-10.0 DESKTOP-AGOCCFS 2.10.0(0.325/5/3) 2018-02-09 15:25 x86_64 Msys
Microsoft Windows 10 x64
Qt 5.10.1, QMake version 3.1
gcc 7.3
```

- Success to build. :smiley:
- Success to run hello world. :smiley:
- Success to run Qxlnt.test. :smiley:
- If you use gcc on Windows, Use MSYS2 instead of MingW. 

## Case 4
- Mac OS (old mac)

```
uname -a
Darwin tentia.local 15.6.0 Darwin Kernel Version 15.6.0: Mon Nov 13 21:58:35 PST 2017; root:xnu-3248.72.11~1/RELEASE_X86_64 x86_64

gcc --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
Apple LLVM version 7.0.2 (clang-700.1.81)
Target: x86_64-apple-darwin15.6.0
Thread model: posix

qmake --version
QMake version 3.0
Using Qt version 5.6.0 in /Users/j2doll/Qt5.6.0/5.6/clang_64/lib
```

- Success to build. :smiley:
- Success to run hello world. :smiley:
- Success to run Qxlnt.test. :smiley:

## Case 5

```
Visual Studio 2017
Qt 5.11.1
Microsoft Windows 10 x64
```

- Success to build to Qxlnt.dll :smiley:
- Success to build to HelloWorld :smiley:
-  Qxlnt.test is ...

