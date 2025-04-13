# Aliases: Parameters
alias ls='ls -h'
alias du='du -h'
alias df='df -h'

# Aliases: Shorthands
alias la='ls -ah'
alias ll='ls -lh'
alias lal='ls -alh'
alias py='python3'
alias vim='nvim'

# Aliases: One Char
alias d="docker"
alias g="git"
alias m="make"
alias n="nvim"
alias q="exit"

# Alias: Custom commands
alias search="grep -nr --exclude-dir .direnv"

# mkdir and cd
mkcd() {
	mkdir $1
	cd $1
}

# create a copy
bak() {
	cp $1 $1.bak
}


# Dotdrop shorthand
dotdrop() {
    DOTDIR="$HOME/dotfiles"

    source $DOTDIR/env/bin/activate
    $DOTDIR/dotdrop.sh -p main -c $DOTDIR/config.yaml $@
    deactivate
}


# Oh My Zsh theme
ZSH_THEME="gianluparri03"
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Direnv and zoxide
if (( ${+commands[direnv]} )); then eval "$(direnv hook zsh)"; fi
if (( ${+commands[zoxide]} )); then eval "$(zoxide init zsh)"; fi

# Local customizations
if [[ -f $HOME/.zshrc_local ]]; then source $HOME/.zshrc_local; fi
