#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $SCRIPT_DIR/dst_config

"$DST_HOME/bin/dontstarve_dedicated_server_nullrenderer" -conf_dir DST_Overworld -console
