#!/bin/bash
MODLIST="@CBA_A3\;@CUP_Core\;@CUP_CWA\;@CUP_Maps\;@CUP_Units\;@CUP_Vehicles\;@CUP_Weapons\;@Enhanced_Movement\;@RHSAFRF\;@RHSGREF\;@RHSSAF\;@RHSUSAF\;@SharkTac_UI"

cd ../..

echo "Launching Server..."
screen -dmS a3-sv /bin/bash -c "./arma3server -name=server -config=scripts/antistasi_rhs_all_cup/server.cfg -mod=$MODLIST"

echo "Launching Headless Client..."
screen -dmS a3-hc /bin/bash -c "./arma3server -client -connect=127.0.0.1 -password=SNIPPED -mod=$MODLIST"