#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable vi mode
set -o vi

# history --> no history due to security
#SAVEHIST=0

# enable colors:
#autoload -U colors && colors  # Load colors

# prompt
# default
#PS1='[\u@\h \W]\$ '
# aqua
#PS1='\[\033[38;5;6m\][\t \u@\h \W] \\$ \[$(tput sgr0)\]'
# green
PS1='\[\e[32m\]\t \u@\H \W \\$\[\e[0m\] '

# for my aliases stored in aliasrc
[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"

# autostart programms
#neofetch
#khal calendar today 30d
calcurse -d 14  # Print the appointments for the given number of upcoming days
