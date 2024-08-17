@echo off
set APP=calculator.py
set TESTS=test_calculator.py
set PYTHON=python
set BIN=app
set BUILD_DIR=build

:run
echo Running the application...
%PYTHON% %APP%
goto :test

:test
echo Running unit tests...
%PYTHON% -m unittest %TESTS%
if %ERRORLEVEL% NEQ 0 goto :error
goto :package

:package
echo Creating deployable package...
if not exist %BUILD_DIR% mkdir %BUILD_DIR%
copy %APP% %BUILD_DIR%/
tar -czf %BIN%.tar.gz -C %BUILD_DIR% %APP%
goto :end

:error
echo Tests failed.
exit /b 1

:end
echo Build complete.
exit /b 0
