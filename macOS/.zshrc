#==============================================================================
## MY ZSHRC
#==============================================================================

# enable colors:
autoload -U colors && colors	# Load colors

# prompt
PROMPT="%F{green}%*%f%F{green} %f%F{green}%n%f%F{green}@%f%F{green}%m%f%F{green} %f%F{green}%~%f%F{green} $ %f"

# history in cache directory:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.cache/zsh/history

# for my aliases stored in aliasrc
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
#alias ls="ls -lahG"

# user specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

# autostart programms
neofetch
