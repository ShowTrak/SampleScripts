@echo off
setlocal
set "SERVICE_NAME=Spooler"

echo Starting service: %SERVICE_NAME%
sc query "%SERVICE_NAME%" >nul 2>nul || (
  echo Service %SERVICE_NAME% not found.
  exit /b 1
)

sc query "%SERVICE_NAME%" | findstr /i "RUNNING" >nul && (
  echo %SERVICE_NAME% is already running.
  endlocal & exit /b 0
)

net start "%SERVICE_NAME%"
if errorlevel 1 (
  echo Failed to start %SERVICE_NAME% (may require elevation).
  exit /b 1
)

echo Service %SERVICE_NAME% started.
endlocal
exit /b 0
