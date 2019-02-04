# Test Case of dev-vs Branch 

## Case 1

- Environment
  - Qt 5.11.2 (qmake 3.1)
  - MingW 5.3.0 32bit
  - g++ 5.3.0
  - mingw32-make 4.1

- Tested project
  - Qxlnt : OK
  - HelloQxlnt : OK
  - Test : OK (1 test case is failed)
```
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

```cpp
class serialization_test_suite 
// ...
void test_round_trip_rw_unicode()
{
    // u8"/9_unicode_Λ.xlsx" doesn't use 0xc3aa for the capital lambda...
    // u8"/9_unicode_\u039B.xlsx" gives the corrct output
    xlnt_assert(round_trip_matches_rw(path_helper::test_file(u8"9_unicode_\u039B.xlsx")));
}
```

## Case 2

- Environment
  - Qt 5.10.0 (MS VC2017 64bit)
  - Visual Studio 2017 x64 15.9.6
  - Qt VS Tools 2.3.1

- Tested project
  - Qxlnt : OK
  - HelloQxlnt : OK
  - Test : NOK

## Case 3

- Environment

- Tested project

