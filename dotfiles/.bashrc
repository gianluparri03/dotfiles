# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Loads custom options
source ~/.bashrc.local

# Sets the PS1
function check_direnv() { if [ "$DIRENV" ]; then echo '(direnv) '; fi }
PS1="$(check_direnv)$PS1_BG[$PS1_FG\u@\h $PS1_BG\W]$\[\e[0m\] "

# Adds the aliases from the bash_aliases file
source ~/.bash_aliases

# Hooks direnv
eval "$(direnv hook bash)"
