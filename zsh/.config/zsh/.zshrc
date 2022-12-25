export STARSHIP_CONFIG="$HOME"/.config/starship/starship.toml

alias vim="nvim"

source "$ZDOTDIR"/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
