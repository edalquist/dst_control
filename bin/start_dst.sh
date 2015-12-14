#!/bin/bash

# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

# Pull in common DST Config
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $SCRIPT_DIR/dst_config

# Initialize our own variables:
CONF_DIR=""
PID_FILE=""

#!/bin/bash
 
while getopts ":d:p:" opt; do
  case $opt in
    d)
      CONF_DIR=$OPTARG
      ;;
    p)
      PID_FILE=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift

if [ "$CONF_DIR" = "" ]; then
	echo "Missing -d <conf_dir>"
	exit 1
fi

cd $DST_HOME
"$DST_HOME/dontstarve_dedicated_server_nullrenderer" -conf_dir $CONF_DIR -console
