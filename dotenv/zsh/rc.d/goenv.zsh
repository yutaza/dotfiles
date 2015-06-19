_command_exists goenv || return

eval "$(goenv init -)"
export GOPATH=$HOME/.goenv/packages
