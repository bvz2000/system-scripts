#!/bin/bash

COMMAND="pacman"
HISTORYFILE="/opt/history/history_pacman.txt"

# TODO: Fix the following so that it isn't using a hard-coded path.
# For now, just edit the following path to point to where the package_manager_history.sh
# script lives.
/opt/scripts/package_manager_history.sh $COMMAND $HISTORYFILE "$@"
