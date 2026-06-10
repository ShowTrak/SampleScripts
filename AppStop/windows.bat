@echo off
setlocal
REM Set the process name (without path)
set "PROCESS_NAME=notepad.exe"

echo Stopping application: %PROCESS_NAME%
tasklist /fi "imagename eq %PROCESS_NAME%" | find /i "%PROCESS_NAME%" >nul || (
  echo Process not running: %PROCESS_NAME%
  endlocal & exit /b 0
)

taskkill /f /im "%PROCESS_NAME%"
if errorlevel 1 (
  echo Failed to stop %PROCESS_NAME% (may require elevation).
  exit /b 1
)

echo Application stopped: %PROCESS_NAME%
endlocal
exit /b 0
