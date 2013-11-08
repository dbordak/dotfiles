#
# Defines environment variables.
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
	export LANG='en_US.UTF-8'
fi

#
# Paths
#

typeset -gU cdpath fpath mailpath path

path=(
	/usr/local/{bin,sbin}
	/usr/{bin,sbin}
	/{bin,sbin}
	/opt/java/bin
	/opt/java/db/bin
	/opt/java/jre/bin
	/usr/bin/core_perl
	/usr/lib/qt4/bin
	/home/daniel/maple13/bin
	/home/daniel/scripts/panel
	$path
)

export KEYTIMEOUT=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd '
export JAVA_FONTS=/usr/share/fonts/TTF
export DEFAULT_USER=daniel
export GOPATH=/home/daniel/.golang
export PKG_CONFIG_PATH=/usr/lib/pkgconfig/
export PANEL_FIFO=/tmp/panel-fifo
export PANEL_HEIGHT=24

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:-"$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-"$HOME/.cache"}

alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias vidja="vblank_mode=0 primusrun schedtool -I -e"
alias boggle="sudo pacman -Syu && meat -u && antigen update && vim +BundleInstall +qall"
