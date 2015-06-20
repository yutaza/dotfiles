
#
# generate base shell
#
# .init.sh
# bin/
# bin/.init.sh
# data/shell/
# data/shell/rc.sh
# data/shell/rc.d/
# data/shell/rc.d/00_dirs.sh
#

function generate-base-shell()
{
    # bin/
    if [ ! -d bin ]; then
        mkdir -p bin
    fi

    # data/shell/
    if [ ! -d data/shell ]; then
        mkdir -p data/shell
    fi

    # data/shell/rc.d/
    if [ ! -d data/shell/rc.d ]; then
        mkdir -p data/shell/rc.d
    fi

    # .init.sh
    if [ ! -f .init.sh ]; then
        echo 'source $TOP_DIR/data/shell/common.sh' >> .init.sh
    fi

    # bin/.init.sh
    if [ ! -f bin/.init.sh ]; then
        echo 'TOP_DIR=$(cd $(dirname $0)/..;pwd)' >> bin/.init.sh
        echo 'source $TOP_DIR/.init.sh' >> bin/.init.sh
    fi

    # data/shell/rc.sh
    if [ ! -f data/shell/rc.sh ]; then
        echo 'for rc_script in $TOP_DIR/data/shell/rc.d/*.sh; do' >> data/shell/rc.sh
        echo '    source $rc_script' >> data/shell/rc.sh
        echo 'done' >> data/shell/rc.sh
    fi

    # data/shell/rc.d/00_dirs.sh
    if [ ! -f data/shell/rc.d/00_dirs.sh ]; then
        echo '' >> data/shell/rc.d/00_dirs.sh
    fi
}
