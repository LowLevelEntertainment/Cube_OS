@echo off
title Cube OS Setup
echo Setting up Cube OS...

:: Create necessary folders
mkdir "%APPDATA%\CubeOS" 2>nul
mkdir "%APPDATA%\CubeOS\Scripts" 2>nul

:: Download required scripts
echo Downloading required files...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/LowLevelEntertainment/Cube_OS/raw/refs/heads/main/start.bat', '%APPDATA%\CubeOS\Scripts\start.bat')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://your-server.com/update.bat', '%APPDATA%\CubeOS\Scripts\update.bat')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://your-server.com/autoupdate_toggle.bat', '%APPDATA%\CubeOS\Scripts\autoupdate_toggle.bat')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://your-server.com/autostart_toggle.bat', '%APPDATA%\CubeOS\Scripts\autostart_toggle.bat')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://your-server.com/gui.pyw', '%APPDATA%\CubeOS\Scripts\gui.pyw')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://your-server.com/gui.pyw', '%APPDATA%\CubeOS\Scripts\set_default_sb3.bat')"

:: Create a shortcut for the GUI
echo Creating shortcut...
powershell -command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\CubeOS Settings.lnk'); $s.TargetPath='%APPDATA%\CubeOS\Scripts\gui.pyw'; $s.Save()"

start set_default_sb3.bat

echo Setup complete! You can now open 'CubeOS acessories' from the Start Menu.
pause
exit