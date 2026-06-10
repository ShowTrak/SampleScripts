@echo off
setlocal
if not defined TEMP (
  echo TEMP environment variable is not set.
  exit /b 1
)
echo Cleaning TEMP: %TEMP%
for /f "delims=" %%D in ('dir /b /ad "%TEMP%" 2^>nul') do rd /s /q "%TEMP%\%%D" 2>nul
for /f "delims=" %%F in ('dir /b /a-d "%TEMP%" 2^>nul') do del /f /q "%TEMP%\%%F" 2>nul
echo TEMP cleanup complete.
endlocal
exit /b 0
