#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# I know there's a proper way of setting the prompt theme but I don't know it.
source .agnostermod.zsh

bindkey -v
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
export KEYTIMEOUT=1

unsetopt nomatch
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd '
export JAVA_FONTS=/usr/share/fonts/TTF

# Line below taken from oh-my-zsh
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
