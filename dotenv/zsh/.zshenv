unsetopt NOMATCH

for f in $ZDOTDIR/function.d/*.zsh; do
  if [ -f $f ]; then
    source $f
  fi
done
