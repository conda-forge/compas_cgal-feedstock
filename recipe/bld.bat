@echo off
:: Limit parallel builds to prevent memory exhaustion on Windows CI
:: CGAL template-heavy C++ compilation uses ~4GB per thread
set CMAKE_BUILD_PARALLEL_LEVEL=1

%PYTHON% -m pip install . -v
if errorlevel 1 exit 1

:: Clean up build directory to reduce size before conda-build stats collection
if exist "%SRC_DIR%\build" rd /s /q "%SRC_DIR%\build"
