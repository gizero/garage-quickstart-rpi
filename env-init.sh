if [ -n "$BASH_SOURCE" ]; then
    THIS_SCRIPT=$BASH_SOURCE
elif [ -n "$ZSH_NAME" ]; then
    THIS_SCRIPT=$0
else
    THIS_SCRIPT="$(pwd)/oe-init-build-env"
fi

QSROOT=$(dirname "$THIS_SCRIPT")

# normalize path
QSROOT=$(realpath "$QSROOT")

unset THIS_SCRIPT

if [ -n "$1" ]; then
    BSP=$1
else
    BSP=raspberrypi
fi

export TEMPLATECONF=$QSROOT/meta-updater-${BSP}/conf
source $QSROOT/poky/oe-init-build-env

