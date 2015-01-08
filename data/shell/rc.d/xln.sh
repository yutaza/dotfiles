function xln()
{
    if [ -d $1 -o -f $1 ]; then
        if [ ! -d $2 ]; then
            if [ ! -f $2 ]; then
                ln -s $1 $2
            fi
        fi
    fi
}
