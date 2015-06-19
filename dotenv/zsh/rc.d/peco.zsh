_command_exists peco || return

for f in $ZDOTDIR/rc.d/peco.d/*.zsh; do
    if [ -f $f ]; then
        source $f
    fi
done
