@echo off

:: Check that Clang is installed
where clang-cl 1>NUL 2>&1
if errorlevel 1 (
    echo Error: could not find clang-cl, exiting
    exit /b 1
)
where lld-link 1>NUL 2>&1
if errorlevel 1 (
    echo Error: could not find lld-link, exiting
    exit /b 1
)

:: Check that Ninja is installed
where ninja 1>NUL 2>&1
if errorlevel 1 (
    echo Error: could not find ninja, exiting
    exit /b 1
)

:: Check that CMake is installed
where cmake 1>NUL 2>&1
if errorlevel 1 (
    echo Error: could not find cmake, exiting
    exit /b 1
)

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
if errorlevel 1 exit /b %errorlevel%
refreshenv

exit /b 0
