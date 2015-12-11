#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $SCRIPT_DIR/dst_config

cd $DST_HOME
"$DST_HOME/dontstarve_dedicated_server_nullrenderer" -conf_dir DST_Cave -console

