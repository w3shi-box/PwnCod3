@echo off
set FILE=state.txt

REM 
echo [SANDBOX TEST] > "%APPDATA%\%FILE%"
echo Workspace: %cd% >> "%APPDATA%\%FILE%"
echo Time: %date% %time% >> "%APPDATA%\%FILE%"

REM 
for /f "tokens=2 delims= " %%A in ('
    curl -o NUL -s -w "STATUS %%{http_code}" https://purplelotus.tech
') do (
    set STATUS=%%A
)

echo HTTP Status: %STATUS% >> "%APPDATA%\%FILE%"

echo Done. Written to %APPDATA%\%FILE%
