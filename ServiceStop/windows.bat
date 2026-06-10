@echo off
setlocal
set "SERVICE_NAME=Spooler"

echo Stopping service: %SERVICE_NAME%
sc query "%SERVICE_NAME%" >nul 2>nul || (
  echo Service %SERVICE_NAME% not found.
  exit /b 1
)

net stop "%SERVICE_NAME%" /y
if errorlevel 1 (
  echo Failed to stop %SERVICE_NAME% (may require elevation).
  exit /b 1
)

echo Service %SERVICE_NAME% stopped.
endlocal
exit /b 0
