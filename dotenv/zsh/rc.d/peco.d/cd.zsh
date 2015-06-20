function _peco_select_cd()
{
    local dir=$(_z 2>&1 | tac | peco --query "$*" | awk '{print $2}')
    if [ ! -z "$dir" ]; then
        cd $dir
    fi
}

zle -N _peco_select_cd
bindkey '^J' _peco_select_cd
