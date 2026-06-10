@echo off
echo Flushing DNS cache...
ipconfig /flushdns
if errorlevel 1 (
  echo Failed to flush DNS cache.
  exit /b 1
)
echo DNS cache flushed successfully.
exit /b 0
