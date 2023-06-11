@echo off

cd ../..

set CURRENT_DIR=%cd%
set CONFIG_FILE=%CURRENT_DIR%\scripts\regular\server.cfg

DayZServer_x64.exe -name=server -profiles=profiles -config=%CONFIG_FILE% -doLogs -adminLog -netLog -freezeCheck -cpuCount=4
