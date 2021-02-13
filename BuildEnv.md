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
   - Qt 5.9.5
   - gcc 7.5.0
   - Ubuntu 18.04 x64

- Tested project (Qxlnt.tests)
  - mostly OK

```
/workspace/github/Qxlnt/build$ ./Qxlnt.test
..................................................................................................................................................................................................................................................................................................................

Run: 306
Passed: 306
Failed: 0
```

