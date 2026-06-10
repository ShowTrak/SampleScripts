@echo off
set "OUT=%TEMP%\systeminfo_%COMPUTERNAME%.txt"
echo Collecting system information to %OUT% ...
systeminfo > "%OUT%"
if errorlevel 1 (
  echo Failed to collect system information.
  exit /b 1
)
echo System information saved to %OUT%
exit /b 0
