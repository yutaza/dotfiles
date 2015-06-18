# prompt
PROMPT='%{[$[31+$RANDOM % 6]m%}%B%U%m'"{%n}%#%{[m%}%u%b "
RPROMPT='%{$reset_color%}$vcs_info_msg_0_$(virtualenv_info)%{[$[31+$RANDOM % 6]m%}%B[%(?.%h.ERROR:%?)] %D{%m/%d %R} [%3c]%b'
