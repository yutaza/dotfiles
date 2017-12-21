_command_exists direnv || return

export EDITOR=vim
eval "$(direnv hook zsh)"
