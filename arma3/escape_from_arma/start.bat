@echo off

set MODLIST="@CBA_A3;@CUP_Units;@RHSAFRF;@RHSUSAF;@Ravage;@CUP_Weapons;@CUP_Core;@Enhanced_Movement"

set CURRENT_DIR=%cd%
set CONFIG_FILE=%CURRENT_DIR%\server.cfg

cd ../..

start /b arma3server_x64.exe -name=server -profiles=profiles -config=%CONFIG_FILE% -mod=%MODLIST%
start /b arma3server_x64.exe -client -connect=127.0.0.1 -password=corona -mod=%MODLIST%
