# Initialize Antigen
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

export KEYTIMEOUT=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd '
export JAVA_FONTS=/usr/share/fonts/TTF
export GOPATH=/home/daniel/.golang
export DEFAULT_USER=daniel

alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias vidja="vblank_mode=0 primusrun schedtool -I -e"
alias boggle="sudo pacman -Syu && meat -u && antigen update && vim +BundleInstall +qall"
