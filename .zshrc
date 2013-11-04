### Old Stuff
#
#autoload -Uz compinit promptinit colors
#colors
#compinit -i
#promptinit
#
## Enables arrow-key driven menus (on double-tab)
#zstyle ':completion:*' menu select
#
#setopt EXTENDED_GLOB
#source ~/packages/prezto/modules/completion/init.zsh
#setopt completealiases
#setopt HIST_IGNORE_DUPS
#
### End Old Stuff

source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen use oh-my-zsh
#antigen use prezto

antigen bundles <<EOBUNDLES
	zsh-users/zsh-syntax-highlighting
	sharat87/zsh-vim-mode
	zsh-users/zsh-history-substring-search
	zsh-users/zsh-completions
EOBUNDLES

antigen theme agnoster

antigen apply

#bindkey -v
#bindkey "^[[1~" beginning-of-line
#bindkey "^[[4~" end-of-line
export KEYTIMEOUT=1

#unsetopt nomatch
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd '
export JAVA_FONTS=/usr/share/fonts/TTF
export GOPATH=/home/daniel/.golang
export DEFAULT_USER=daniel

alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias boggle="pacaur -Syu"
alias vidja="vblank_mode=0 primusrun schedtool -I -e"
alias supdate="sudo pacman -Syu && meat -u && antigen update && vim +BundleInstall +qall" 
