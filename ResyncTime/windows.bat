@echo off
echo Resyncing system time...
w32tm /resync
if errorlevel 1 (
  echo Failed to resync time (service may require elevation).
  exit /b 1
)
echo Time resynced.
exit /b 0
