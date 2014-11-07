# rc.d のファイルの読み込み
for f in $ZDOTDIR/rc.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done
