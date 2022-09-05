# enable editor
export EDITOR="vim"

# enable vi mode
set -o vi

# history --> no history due to security
SAVEHIST=0

# enable colors
autoload -U colors && colors

# prompt
PROMPT="%F{green}%*%f%F{green} %f%F{green}%n%f%F{green}@%f%F{green}%m%f%F{green} %f%F{green}%~%f%F{green} $ %f"

# for my aliases stored in aliasrc
[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"
