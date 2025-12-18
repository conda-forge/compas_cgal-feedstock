@echo off
set CMAKE_BUILD_PARALLEL_LEVEL=%CPU_COUNT%

%PYTHON% -m pip install . -v
if errorlevel 1 exit 1

:: Clean up build directory to reduce size before conda-build stats collection
:: This prevents MemoryError in directory_size() on Windows
if exist "%SRC_DIR%\build" rd /s /q "%SRC_DIR%\build"
