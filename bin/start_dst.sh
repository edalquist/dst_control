#!/bin/bash

# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

# Initialize our own variables:
conf_dir=""

while getopts "h?d:" opt; do
    case "$opt" in
    h|\?)
        show_help
        exit 0
        ;;
    d)  conf_dir=""
        ;;
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $SCRIPT_DIR/dst_config

cd $DST_HOME
"$DST_HOME/dontstarve_dedicated_server_nullrenderer" -conf_dir $conf_dir -console
