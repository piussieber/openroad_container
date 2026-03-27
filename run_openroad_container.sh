#!/bin/bash
if [ -z "$1" ]; then
    COMMAND="bash"
else
    COMMAND="$1"
fi

LIBRARY_PATH=/usr/pack

export XDG_RUNTIME_DIR="/tmp/runtime-$USER"

apptainer exec \
--bind $LIBRARY_PATH:$LIBRARY_PATH \
--bind /scratch:/scratch \
--bind /home:/home \
--bind /usr/scratch:/usr/scratch \
--env XDG_RUNTIME_DIR=/tmp/runtime-$USER \
--env PS1="\[\e[38;5;112m\]OpenROAD_Dev_Container\[\e[0m\]:\[\e[38;5;111m\][\W]\[\e[0m\]$" \
openroad.sif $COMMAND
