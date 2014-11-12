# rc.d のファイルの読み込み
for f in $ZDOTDIR/rc.d/*; do
  if [ -f $f ]; then
    source $f
  fi
done

# ホームディレクトリの .zshrc?*/* を読み込む
for f in ~/.zshrc?*/*; do
  if [ -f $f ]; then
    source $f
  fi
done

