path=(
    $HOME/bin(N-/)
    $HOME/.dotfiles/var/plugins/git/tig/bin(N-/)
    $HOME/.goenv/bin(N-/)
    /usr/local/bin(N-/)
    /usr/bin(N-/)
    ${^path}(N-/^W)
)

if hash goenv 2>/dev/null; then
    eval "$(goenv init -)"
fi

typeset -U path PATH
