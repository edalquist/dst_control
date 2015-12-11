#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export SteamAppId=322330
export SteamGameId=322330

"$SCRIPT_DIR/dontstarve_dedicated_server_nullrenderer" -conf_dir DST_Overworld -console

