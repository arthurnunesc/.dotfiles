# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/goinfre/arnunes-/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/goinfre/arnunes-/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/goinfre/arnunes-/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/goinfre/arnunes-/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Checks which OS we are in and sets the machine variable accordingly
uname_out="$(uname -s)"
case "${uname_out}" in
Linux*) machine=Linux ;;
Darwin*) machine=Mac ;;
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
if [ $machine = "Linux" ]; then
    alias ls="ls --color=auto"
    alias nvim="nvim.appimage"
    alias vim="nvim.appimage"
    alias vi="nvim.appimage"
elif [ $machine = "Mac" ]; then
    alias nvim="nvim"
    alias vim="nvim"
    alias vi="nvim"
fi

# Prompt
PS1="arthur: %1~ %# "

# Set PATH so it includes user's private bin and cargo bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/.cargo/bin" ]; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

# Plugins
if [ ! -f "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting
fi

source "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
