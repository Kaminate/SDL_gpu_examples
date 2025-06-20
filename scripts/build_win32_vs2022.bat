pushd "%~dp0"
:loop
pushd ..
cmake --log-level=VERBOSE -G "Visual Studio 17 2022" -A x64 -B build_vs2022 -Wdev -DSDL_EXAMPLES=OFF
popd
pause
cls
goto :loop
