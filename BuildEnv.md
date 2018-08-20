# Tested Environments

## Case 1 : Linux+gcc

- Success to build. :smiley:
- Success to run hello world. :smiley:
- Success to run Qxlnt.test. :smiley:

```
~/workspace/github/Qxlnt/Qxlnt.tests$ uname -a
Linux DESKTOP-AJ9QK8Q 4.4.0-17134-Microsoft #137-Microsoft Thu Jun 14 18:46:00 PST 2018 x86_64 x86_64 x86_64 GNU/Linux

~/workspace/github/Qxlnt/Qxlnt.tests$ g++ -v
Using built-in specs.
COLLECT_GCC=g++
COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-linux-gnu/7/lto-wrapper
OFFLOAD_TARGET_NAMES=nvptx-none
OFFLOAD_TARGET_DEFAULT=1
Target: x86_64-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu 7.3.0-16ubuntu3' --with-bugurl=file:///usr/share/doc/gcc-7/README.Bugs --enable-languages=c,ada,c++,go,brig,d,fortran,objc,obj-c++ --prefix=/usr --with-gcc-major-version-only --with-as=/usr/bin/x86_64-linux-gnu-as --with-ld=/usr/bin/x86_64-linux-gnu-ld --program-suffix=-7 --program-prefix=x86_64-linux-gnu- --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --with-default-libstdcxx-abi=new --enable-gnu-unique-object --disable-vtable-verify --enable-libmpx --enable-plugin --enable-default-pie --with-system-zlib --with-target-system-zlib --enable-objc-gc=auto --enable-multiarch --disable-werror --with-arch-32=i686 --with-abi=m64 --with-multilib-list=m32,m64,mx32 --enable-multilib --with-tune=generic --enable-offload-targets=nvptx-none --without-cuda-driver --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu
Thread model: posix
gcc version 7.3.0 (Ubuntu 7.3.0-16ubuntu3)

~/workspace/github/Qxlnt/Qxlnt.tests$ ./Qxlnt.test
..........................................................................................................................................................................................................................................................................................

Run: 282
Passed: 282
Failed: 0
```

- Actually Qt shared object is not needed. (type 'ldd Qxlnt.test')

## Case 2 : MSYS2+gcc

- Success to build. :smiley:
- Success to run hello world. :smiley:
- Success to run Qxlnt.test. :rage: one case is failed.

```
$ uname -a
MINGW64_NT-10.0 DESKTOP-AJ9QK8Q 2.10.0(0.325/5/3) 2018-02-09 15:25 x86_64 Msys

$ g++ -v
Using built-in specs.
COLLECT_GCC=D:\msys64\mingw64\bin\g++.exe
COLLECT_LTO_WRAPPER=D:/msys64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/8.2.0/lto-wrapper.exe
Target: x86_64-w64-mingw32
Configured with: ../gcc-8.2.0/configure --prefix=/mingw64 --with-local-prefix=/mingw64/local --build=x86_64-w64-mingw32 --host=x86_64-w64-mingw32 --target=x86_64-w64-mingw32 --with-native-system-header-dir=/mingw64/x86_64-w64-mingw32/include --libexecdir=/mingw64/lib --enable-bootstrap --with-arch=x86-64 --with-tune=generic --enable-languages=ada,c,lto,c++,objc,obj-c++,fortran --enable-shared --enable-static --enable-libatomic --enable-threads=posix --enable-graphite --enable-fully-dynamic-string --enable-libstdcxx-filesystem-ts=yes --enable-libstdcxx-time=yes --disable-libstdcxx-pch --disable-libstdcxx-debug --disable-isl-version-check --enable-lto --enable-libgomp --disable-multilib --enable-checking=release --disable-rpath --disable-win32-registry --disable-nls --disable-werror --disable-symvers --with-libiconv --with-system-zlib --with-gmp=/mingw64 --with-mpfr=/mingw64 --with-mpc=/mingw64 --with-isl=/mingw64 --with-pkgversion='Rev1, Built by MSYS2 project' --with-bugurl=https://sourceforge.net/projects/msys2 --with-gnu-as --with-gnu-ld
Thread model: posix
gcc version 8.2.0 (Rev1, Built by MSYS2 project)

MINGW64 ~/workspace/github/Qxlnt/Qxlnt.tests
$ ./debug/Qxlnt.test
...........................................................................................*
stest_round_trip_rw_unicode failed with:
std::exception
..............................................................................................................................................................................................

Run: 282
Passed: 281
Failed: 1

stest_round_trip_rw_unicode failed with:
std::exception
```

## Case 3 : MingW+gcc

- MingW x86/32bit
- Success to build. :smiley:
- Success to run hello world. :smiley:
- Success to run Qxlnt.test. :rage: one case is failed.

```
>qmake -v
QMake version 3.1
Using Qt version 5.11.1 in D:/Qt/Qt5.11.1/5.11.1/mingw53_32/lib

>g++ -v
Using built-in specs.
COLLECT_GCC=g++
COLLECT_LTO_WRAPPER=D:/Qt/Qt5.11.1/Tools/mingw530_32/bin/../libexec/gcc/i686-w64-mingw32/5.3.0/lto-wrapper.exe
Target: i686-w64-mingw32
Configured with: ../../../src/gcc-5.3.0/configure --host=i686-w64-mingw32 --build=i686-w64-mingw32 --target=i686-w64-mingw32 --prefix=/mingw32 --with-sysroot=/c/mingw530/i686-530-posix-dwarf-rt_v4-rev0/mingw32 --with-gxx-include-dir=/mingw32/i686-w64-mingw32/include/c++ --enable-shared --enable-static --disable-multilib --enable-languages=c,c++,fortran,lto --enable-libstdcxx-time=yes --enable-threads=posix --enable-libgomp --enable-libatomic --enable-lto --enable-graphite --enable-checking=release --enable-fully-dynamic-string --enable-version-specific-runtime-libs --disable-sjlj-exceptions --with-dwarf2 --disable-isl-version-check --disable-libstdcxx-pch --disable-libstdcxx-debug --enable-bootstrap --disable-rpath --disable-win32-registry --disable-nls --disable-werror --disable-symvers --with-gnu-as --with-gnu-ld --with-arch=i686 --with-tune=generic --with-libiconv --with-system-zlib --with-gmp=/c/mingw530/prerequisites/i686-w64-mingw32-static --with-mpfr=/c/mingw530/prerequisites/i686-w64-mingw32-static --with-mpc=/c/mingw530/prerequisites/i686-w64-mingw32-static --with-isl=/c/mingw530/prerequisites/i686-w64-mingw32-static --with-pkgversion='i686-posix-dwarf-rev0, Built by MinGW-W64 project' --with-bugurl=http://sourceforge.net/projects/mingw-w64 CFLAGS='-O2 -pipe -I/c/mingw530/i686-530-posix-dwarf-rt_v4-rev0/mingw32/opt/include -I/c/mingw530/prerequisites/i686-zlib-static/include -I/c/mingw530/prerequisites/i686-w64-mingw32-static/include' CXXFLAGS='-O2 -pipe -I/c/mingw530/i686-530-posix-dwarf-rt_v4-rev0/mingw32/opt/include -I/c/mingw530/prerequisites/i686-zlib-static/include -I/c/mingw530/prerequisites/i686-w64-mingw32-static/include' CPPFLAGS= LDFLAGS='-pipe -L/c/mingw530/i686-530-posix-dwarf-rt_v4-rev0/mingw32/opt/lib -L/c/mingw530/prerequisites/i686-zlib-static/lib -L/c/mingw530/prerequisites/i686-w64-mingw32-static/lib -Wl,--large-address-aware'
Thread model: posix
gcc version 5.3.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)

>release\Qxlnt.test
...........................................................................................*
stest_round_trip_rw_unicode failed with:
std::exception
..............................................................................................................................................................................................

Run: 282
Passed: 281
Failed: 1

stest_round_trip_rw_unicode failed with:
std::exception
```

## Case 4 : Visual C++

- Build :smiley: 
	- You must build Qxlnt.DLL. Static lib is not supported.
- Hello world (using Qxlnt.DLL) :smiley: 
- Qxlnt.test is failed to make. :rage:

```
Visual Studio 2017
Qt 5.11.1
Microsoft Windows 10 x64
```

## Case 5 : Mac OS

- Build :smiley:
- Hello world :smiley:
- Qxlnt.test :smiley:

```

$ uname -a
Darwin tests-Mac.local 17.7.0 Darwin Kernel Version 17.7.0: Thu Jun 21 22:53:14 PDT 2018; root:xnu-4570.71.2~1/RELEASE_X86_64 x86_64

$ g++ --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/4.2.1
Apple LLVM version 9.1.0 (clang-902.0.39.2)
Target: x86_64-apple-darwin17.7.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

$ qmake --version
QMake version 3.1
Using Qt version 5.11.1 in /Users/test/Qt5.11.1/5.11.1/clang_64/lib

$ ./Qxlnt.test 
..........................................................................................................................................................................................................................................................................................
Run: 282
Passed: 282
Failed: 0

```


