@echo off
setlocal
REM Configure both the process name and full path
set "PROCESS_NAME=notepad.exe"
set "APP_PATH=C:\\Windows\\System32\\notepad.exe"

if not exist "%APP_PATH%" (
  echo Application not found: %APP_PATH%
  exit /b 1
)

echo Restarting application: %PROCESS_NAME%
rem Try to stop if running
 tasklist /fi "imagename eq %PROCESS_NAME%" | find /i "%PROCESS_NAME%" >nul && taskkill /f /im "%PROCESS_NAME%" >nul 2>nul
 timeout /t 1 >nul

start "" "%APP_PATH%"
if errorlevel 1 (
  echo Failed to start %APP_PATH%.
  exit /b 1
)

echo Application restarted.
endlocal
exit /b 0
