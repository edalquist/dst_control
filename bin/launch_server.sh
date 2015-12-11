#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SCREEN_NAME="$1"
SCRIPT_NAME="$2"

echo -e "Stopping\t$SCREEN_NAME"
echo screen -dr ${SCREEN_NAME} -X -S quit
echo -e "Stopped\t$SCREEN_NAME"

echo -e "Starting\t$SCREEN_NAME"
echo screen -dmS ${SCREEN_NAME} ${SCRIPT_DIR}/${SCRIPT_NAME}
echo -e "Started\t$SCREEN_NAME"

