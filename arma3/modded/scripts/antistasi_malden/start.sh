#!/bin/bash
MODLIST="@CBA_A3\;@Enhanced_Movement\;@SharkTac_UI\;@task_force_radio"

cd ../..

echo "Launching Server..."
screen -dmS a3-sv /bin/bash -c "./arma3server -name=server -config=scripts/antistasi_malden/server.cfg -mod=$MODLIST"

echo "Launching Headless Client..."
screen -dmS a3-hc /bin/bash -c "./arma3server -client -connect=127.0.0.1 -password=SNIPPED -mod=$MODLIST"
