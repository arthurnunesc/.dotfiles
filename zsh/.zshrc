# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/arthurnunesc/.local/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/arthurnunesc/.local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/arthurnunesc/.local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/arthurnunesc/.local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Checks which OS we are in and sets the machine variable accordingly
uname_out="$(uname -s)"
case "${uname_out}" in
Linux*) machine=linux ;;
Darwin*) machine=mac ;;
*) machine="OTHER:${uname_out}" ;;
esac

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arthurnunesc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# 42 stuff
alias ccw="gcc -Wall -Wextra -Werror"
alias normr="norminette -R CheckForbiddenSourceHeader"

# My aliases
if [ $machine = "linux" ]; then
    alias nvim="nvim.appimage"
    alias vim="nvim.appimage"
    alias vi="nvim.appimage"
elif [ $machine = "mac" ]; then
    alias nvim="nvim"
    alias vim="nvim"
    alias vi="nvim"
fi

alias conda42="conda activate 42AI-$USER"

# Prompt
PS1="arthur: %1~ %# "

# Set PATH so it includes user's private bin and cargo bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/.cargo/bin" ]; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

source "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "$HOME"/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=("$HOME"/.config/zsh/plugins/zsh-completions/src $fpath)
