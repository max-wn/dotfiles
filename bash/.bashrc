#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable editor
export EDITOR="vim"

# enable vi mode
set -o vi

# enable colors:
#autoload -U colors && colors  # Load colors

# prompt
PS1='\[\033[38;5;6m\][\t \u@\h \W] \\$ \[$(tput sgr0)\]'

# for my aliases stored in aliasrc
[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"

# autostart programms
neofetch
