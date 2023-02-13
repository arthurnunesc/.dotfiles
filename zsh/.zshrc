# export STARSHIP_CONFIG="$HOME"/.config/starship/starship.toml

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/arthurnunesc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ccw="cc -Wall -Wextra -Werror"
alias normr="norminette -R CheckForbiddenSourceHeader"

# source "$ZDOTDIR"/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# eval "$(starship init zsh)"

# source "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PS1="arthur: %1~ %# "
