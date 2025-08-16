@echo off
setlocal
REM Set the full path to the application EXE
set "APP_PATH=C:\\Windows\\System32\\notepad.exe"

if not exist "%APP_PATH%" (
  echo Application not found: %APP_PATH%
  exit /b 1
)

echo Starting application: %APP_PATH%
start "" "%APP_PATH%"
endlocal
exit /b 0
