@echo off

REM Variables
set APP=calculator.py
set TESTS=test_calculator.py
set BUILD_DIR=build
set BIN=app

REM Run the application
echo Running the application...
python %APP%

REM Run unit tests
echo Running unit tests...
python -m unittest %TESTS%
if %errorlevel% neq 0 (
    echo Unit tests failed.
    exit /b 1
)

REM Create deployable package
echo Creating deployable package...
if not exist %BUILD_DIR% (
    mkdir %BUILD_DIR%
)
copy %APP% %BUILD_DIR%

REM Use PowerShell to create a ZIP archive
powershell Compress-Archive -Path %BUILD_DIR%\* -DestinationPath %BIN%.zip -Force

echo Build and packaging completed successfully.
