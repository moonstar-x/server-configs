@echo off

cd ..
srcds.exe -game csgo -console -usercon -tickrate 128 +game_type 1 +game_mode 2 +mapgroup mg_active +map de_mirage
