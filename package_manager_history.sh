#!/bin/bash

COMMAND=`basename "$0"`
USAGE="$COMMAND <command> <history_file> <arg1> ... <argN>

command:         The package management command (such as apt or pacman)
history_file:    A path to a text file where the history information will be stored.
                 If this files does not exist, it will be created.
arg1-N:          The arguments we want to pass to the command above."

if [ $# -lt 3 ]
  then
    echo ERROR: incorrect number of arguments.
    echo
    echo "USAGE: $USAGE"
    exit 1
fi

# For security, don't allow just any command...
if [ "$1" != "pacman" -a "$1" != "apt" ]; 
  then
    echo "The only commands you may issue are 'pacman' or 'apt'"
    exit 1
fi

ARGS="${@:3}"

DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo ------------------------------------------------------------------- >> $2
echo $DATE >> $2
echo command: $1 $ARGS >> $2
echo >> $2
$1 $ARGS
