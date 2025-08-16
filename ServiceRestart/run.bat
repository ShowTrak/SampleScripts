@echo off
setlocal
set "SERVICE_NAME=Spooler"

echo Restarting service: %SERVICE_NAME%
sc query "%SERVICE_NAME%" >nul 2>nul || (
  echo Service %SERVICE_NAME% not found.
  exit /b 1
)

net stop "%SERVICE_NAME%" /y >nul 2>nul
REM Wait up to ~10 seconds for stop
for /l %%I in (1,1,10) do (
  sc query "%SERVICE_NAME%" | findstr /i "STOPPED" >nul && goto :stopped
  timeout /t 1 >nul
)

:stopped
net start "%SERVICE_NAME%"
if errorlevel 1 (
  echo Failed to start %SERVICE_NAME% (may require elevation).
  exit /b 1
)

echo Service %SERVICE_NAME% restarted.
endlocal
exit /b 0
