@echo off
chcp 65001 >nul & REM Set to UTF-8 encoding

REM Set terminal title
title 🕹ComfyUI

REM Get the directory path of the current script
set "appDirectory=%~dp0"

REM Define the virtual environment name
set "condaEnv=comfyenv" REM Replace with your Conda environment name

echo 🕹 如果你遇到任何问题，请联系我 - kk8bit
echo.

REM Check if main.py exists
if exist "%appDirectory%main.py" (
    echo main.py found...

    REM Check if Conda is installed
    where conda >nul 2>&1
    if %errorlevel% equ 0 (
        echo Conda detected, trying to activate virtual environment %condaEnv%...
        call conda activate %condaEnv%
    ) else (
        echo Conda not detected, using system Python to launch...
    )
    
    echo Launching ComfyUI...
    python main.py --auto-launch
) else (
    echo Error: main.py not found. Please place the launcher in the ComfyUI root directory
)

endlocal
pause