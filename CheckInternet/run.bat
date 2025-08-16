@echo off
echo Pinging 8.8.8.8 to verify connectivity...
ping -n 3 8.8.8.8 >nul
if errorlevel 1 (
  echo Internet connectivity check failed.
  exit /b 1
)
echo Internet connectivity OK.
exit /b 0
