#!/bin/bash

export LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH"
./svends_run -console -port 27030 +maxplayers 8 +log on +map _server_start
