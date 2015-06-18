# rc.d のファイルの読み込み
for f in $ZDOTDIR/rc.d/*.zsh; do
  if [ -f $f ]; then
    source $f
  fi
done

# ホームディレクトリの .zshrc-local/* を読み込む
for f in ~/.zshrc-local/*.zsh; do
  if [ -f $f ]; then
    source $f
  fi
done

