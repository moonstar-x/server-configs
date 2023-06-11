@echo off
set SteamAppId=892970

cd ..

valheim_server -nographics -batchmode -name "Greencoast Gaming" -port 2456 -world "world" -password "SECRET" -crossplay -savedir serverdata
