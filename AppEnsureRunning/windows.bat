@echo off
setlocal
set "PROCESS_NAME=notepad.exe"
set "APP_PATH=C:\\Windows\\System32\\notepad.exe"

if not exist "%APP_PATH%" (
  echo Application not found: %APP_PATH%
  exit /b 1
)

tasklist /fi "imagename eq %PROCESS_NAME%" | find /i "%PROCESS_NAME%" >nul && (
  echo %PROCESS_NAME% already running.
  endlocal & exit /b 0
)

echo Starting application: %APP_PATH%
start "" "%APP_PATH%"
if errorlevel 1 (
  echo Failed to start %APP_PATH%.
  exit /b 1
)

echo Application is running.
endlocal
exit /b 0
