@echo off
setlocal enabledelayedexpansion

set "INPUT=%~1"
if "%INPUT%"=="" set /p "INPUT=Enter or drag the input folder path: "

set "INPUT=%INPUT:"=%"

set "EXE=%~dp0mesa-x64.exe"
if not exist "%EXE%" set "EXE=mesa-x64.exe"

if not exist "%INPUT%\" (
    echo Input folder not found: %INPUT%
    pause
    exit /b 1
)

echo.
echo Running: "%EXE%" -i "%INPUT%"
"%EXE%" -i "%INPUT%"

echo.
echo Done.
pause