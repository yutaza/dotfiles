_add_path $HOME/.goenv/bin

if hash goenv 2>/dev/null; then
    eval "$(goenv init -)"
fi
