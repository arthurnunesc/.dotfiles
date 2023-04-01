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
alias ls="ls --color=auto"
alias nvim="nvim.appimage"
alias vim="nvim.appimage"
alias vi="nvim.appimage"

# Prompt
PS1="arthur: %1~ %# "

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# Plugins
source "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
