for f in $ZDOTDIR/shell/*.sh; do
    if [ -f $f ]; then
        source $f
    fi
done
