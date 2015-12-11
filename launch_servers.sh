#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

"$SCRIPT_DIR/launch_server.sh" dst_overworld start_overworld.sh
"$SCRIPT_DIR/launch_server.sh" dst_cave start_cave.sh

