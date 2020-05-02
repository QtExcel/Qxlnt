# Tested Environments 

## Case 1 : MingW

- Environment
  - Qt 5.13.1
  - MingW 7.3.0 64bit
  - gcc 7.3.0
  - Microsoft Windows 10 x64

- Tested project (Qxlnt.tests)
  - mostly OK (2 test case is failed)

```
.............................................................................................................................*
stest_round_trip_rw_unicode failed with:
std::exception
..................................................................................................................................*
ntest_serialise_number failed with:
xlnt::exception : assert failed at L:53
serialiser.serialise(1.23456789012345e+67) == "1.23456789012345e+67"
.................................................

Run: 306
Passed: 304
Failed: 2

stest_round_trip_rw_unicode failed with:
std::exception

ntest_serialise_number failed with:
xlnt::exception : assert failed at L:53
serialiser.serialise(1.23456789012345e+67) == "1.23456789012345e+67"
```
 

## Case 2 : Linux

- Environment
   - Qt 5.9.5
   - gcc 7.5.0
   - Ubuntu 18.04 x64

- Tested project (Qxlnt.tests)
  - mostly OK

```
..................................................................................................................................................................................................................................................................................................................

Run: 306
Passed: 306
Failed: 0
```




