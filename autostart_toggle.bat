@echo off
title Toggling Start on Boot...
set "STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "START_SCRIPT=%APPDATA%\CubeOS\Scripts\start.bat"
set "HIDDEN_FOLDER=%APPDATA%\CubeOS\Hidden"

:: Check if auto-start is enabled
if exist "%STARTUP_FOLDER%\start.bat" (
    echo Disabling auto-start...
    mkdir "%HIDDEN_FOLDER%" 2>nul
    move "%STARTUP_FOLDER%\start.bat" "%HIDDEN_FOLDER%\start.bat"
    echo Auto-start disabled.
) else (
    echo Enabling auto-start...
    move "%HIDDEN_FOLDER%\start.bat" "%STARTUP_FOLDER%\start.bat"
    echo Auto-start enabled.
)

pause
exit