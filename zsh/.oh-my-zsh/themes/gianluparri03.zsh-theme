blue()  { echo -n "%{$fg[blue]%}" }
green() { echo -n "%{$fg[green]%}" }
gray()  { echo -n "%{$FG[240]%}" }
reset() { echo -n "%{$reset_color%}" }

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME_GIT_PROMPT_PREFIX="{"
ZSH_THEME_GIT_PROMPT_SUFFIX="} "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

lprompt() {
    gray;  echo "${(pl:$COLUMNS::\u2500:)}"
    reset; if (( ${+DIRENV_DIR} )); then echo -n "(direnv) "; fi
    reset; if (( ${+VIRTUAL_ENV} )); then echo -n "(${VIRTUAL_ENV:t}) "; fi
    blue;  echo -n "["
    green; echo -n "%n@%M "
    blue;  echo -n "%1~"
    blue;  echo -n "] "
    reset; echo -n "${git_prompt_info}"
    echo -n "$ "
}

rprompt() {
    gray
    echo -n "%*"
    reset
}

PROMPT='$(lprompt)'
RPROMPT='$(rprompt)'
