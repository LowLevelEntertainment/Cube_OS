@echo off
title Toggling Auto-Update...
set "STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "UPDATE_SCRIPT=%APPDATA%\CubeOS\Scripts\update.bat"
set "HIDDEN_FOLDER=%APPDATA%\CubeOS\Hidden"

:: Check if auto-update is enabled
if exist "%STARTUP_FOLDER%\update.bat" (
    echo Disabling auto-update...
    mkdir "%HIDDEN_FOLDER%" 2>nul
    move "%STARTUP_FOLDER%\update.bat" "%HIDDEN_FOLDER%\update.bat"
    echo Auto-update disabled.
) else (
    echo Enabling auto-update...
    move "%HIDDEN_FOLDER%\update.bat" "%STARTUP_FOLDER%\update.bat"
    echo Auto-update enabled.
)

pause
exit