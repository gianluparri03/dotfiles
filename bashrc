[[ $- != *i* ]] && return

function check_direnv() { if [ "$DIRENV" ]; then echo '(direnv) '; fi }
PS1='$(check_direnv)\[\e[94m\][\[\e[32m\]\u@\h \[\e[94m\]\W]$\[\e[0m\] '

source /home/gianluparri03/.bash_aliases

eval "$(direnv hook bash)"
