# Tested Environments 

## Case 1 : MingW

- Environment
  - Qt 6.0.1
  - MingW 8.1.0 64bit
  - gcc 8.1.0
  - Microsoft Windows 10 x64

- Tested project (Qxlnt.tests)
  - mostly OK (1 test case is failed)

```
D:\workspace\github\Qxlnt\build3\release>Qxlnt.test
.............................................................................................................................*
stest_round_trip_rw_unicode failed with:
std::exception
....................................................................................................................................................................................

Run: 306
Passed: 305
Failed: 1

stest_round_trip_rw_unicode failed with:
std::exception
```
 

## Case 2 : Linux

- Environment
  - Ubuntu 20.04
  - Linux 5.15.79.1 x86_64 
  - g++ 11.3.0
  - GNU Make 4.3
  - QMake version 3.1
  - Qt version 6.4.1


- Tested project (Qxlnt.tests)
  - mostly OK

```
/workspace/github/Qxlnt/build$ ./Qxlnt.test
..................................................................................................................................................................................................................................................................................................................

Run: 314
Passed: 314
Failed: 0
```

