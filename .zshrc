# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

autoload -Uz compinit promptinit colors
colors
compinit -i
promptinit

# Enables arrow-key driven menus (on double-tab)
zstyle ':completion:*' menu select

setopt EXTENDED_GLOB
source ~/packages/prezto/modules/completion/init.zsh
setopt completealiases
setopt HIST_IGNORE_DUPS

# I know there's a proper way of setting the prompt theme but I don't know it.
source prompt_simple_powerline

bindkey -v
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
export KEYTIMEOUT=1

unsetopt nomatch
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd '
export JAVA_FONTS=/usr/share/fonts/TTF
export GOPATH=/home/daniel/.golang

alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias murderorphans="sudo pacman -Rs $(pacman -Qtdq)"
alias boggle="pacaur -Syu"
alias vidja="vblank_mode=0 primusrun schedtool -I -e"
#alias mictoggle="~/bin/toggle_alsa_mode"
