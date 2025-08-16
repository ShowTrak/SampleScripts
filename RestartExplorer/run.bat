@echo off
echo Restarting Windows Explorer...
taskkill /f /im explorer.exe >nul 2>nul
timeout /t 1 >nul
start explorer.exe
if errorlevel 1 (
  echo Failed to start explorer.exe
  exit /b 1
)
echo Explorer restarted.
exit /b 0
