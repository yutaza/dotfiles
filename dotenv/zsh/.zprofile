# profile.d のファイルの読み込み
for f in $ZDOTDIR/profile.d/*; do
    if [ -f $f ]; then
        source $f
    fi
done

# ~/.zprofile-local/* を読み込む
for f in ~/.zprofile-local/*.zsh; do
    if [ -f $f ]; then
        source $f
    fi
done
