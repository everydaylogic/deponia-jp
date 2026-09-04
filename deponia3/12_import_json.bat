@echo off
cd /d "%~dp0"

py ..\bin\import_json.py original.txt translation.json original_ja.txt

if errorlevel 1 (
    echo.
    echo *** FAILED ***
    echo Check that Python is installed and translation.json exists.
) else (
    echo.
    echo original_ja.txt created.
)
pause