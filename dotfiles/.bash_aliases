# ls (shorthands)
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -a"
alias lal="ls -la"

# cp and mv (ask overwrite)
alias cp="cp -i"
alias mv="mv -i"

# python (3 as default)
alias py="python3"

# tree (colored)
alias tree="tree -C"

# xclip (in clipboard)
alias xc="xclip -sel clip"

# exit (shorthand)
alias q="exit"

# batcat (shorthand)
alias bat="batcat"

# mkdir + cd = mkcd
mkcd() { mkdir "$1"; cd "$1"; }
