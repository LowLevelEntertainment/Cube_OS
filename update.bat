@echo off
title Updating Cube OS...
echo Downloading latest version...

:: Download the latest Cube OS file
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://your-server.com/CubeOS.sb3', '%APPDATA%\CubeOS\CubeOS.sb3')"

echo Update complete!
pause
exit