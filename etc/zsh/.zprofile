# profile.d のファイルの読み込み
for f in $ZDOTDIR/profile.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done
