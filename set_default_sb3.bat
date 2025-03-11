@echo off
title Setting TurboWarp as Default for .sb3 Files
echo Searching for TurboWarp installation...

:: Check common locations
set TURBOWARP_PATH=""
for %%A in (
    "C:\Program Files\TurboWarp\TurboWarp.exe"
    "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps\TurboWarp.exe"
    "%USERPROFILE%\AppData\Local\Programs\TurboWarp\TurboWarp.exe"
    "%APPDATA%\TurboWarp\TurboWarp.exe"
) do (
    if exist %%A set TURBOWARP_PATH=%%A
)

:: If TurboWarp was not found, ask user to install it
if "%TURBOWARP_PATH%"=="" (
    echo TurboWarp is not installed or was not found!
    echo Please install TurboWarp and run this script again.
    pause
    exit
)

echo TurboWarp found at: %TURBOWARP_PATH%
echo Setting it as the default app for .sb3 files...

:: Add registry entry to set TurboWarp as default
reg add "HKEY_CLASSES_ROOT\.sb3" /ve /d "TurboWarpProject" /f
reg add "HKEY_CLASSES_ROOT\TurboWarpProject\shell\open\command" /ve /d "\"%TURBOWARP_PATH%\" \"%%1\"" /f

echo Done! .sb3 files will now open with TurboWarp.
pause
exit