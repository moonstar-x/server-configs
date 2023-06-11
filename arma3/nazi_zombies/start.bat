@echo off

set MODLIST="@CBA_A3;@Zombies_and_Demons"

set CURRENT_DIR=%cd%
set CONFIG_FILE=%CURRENT_DIR%\server.cfg

cd ../..

arma3server_x64.exe -name=server -profiles=profiles -config=%CONFIG_FILE% -mod=%MODLIST%
