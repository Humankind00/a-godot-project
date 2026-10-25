@echo off
rem Halloween web build launcher - double-click to play locally
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
    echo [ERROR] Python was not found. Install Python 3 from https://www.python.org and tick "Add to PATH".
    pause
    exit /b 1
)

echo Starting local server on http://localhost:8000 ...
start "Halloween Server (close this window to stop)" cmd /k python -m http.server 8000
timeout /t 2 >nul
start "" http://localhost:8000/index.html
exit /b 0
