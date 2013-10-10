#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Editors
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

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
	/usr/local/{bin,sbin}
	/usr/{bin,sbin}
	/{bin,sbin}
	/opt/android-sdk/platform-tools
	/opt/java/bin
	/opt/java/db/bin
	/opt/java/jre/bin
	/usr/bin/core_perl
	/usr/lib/qt4/bin
	/home/daniel/maple13/bin
	$path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

#
# Temporary Files
#


#if [[ -d "$TMPDIR" ]]; then
#  export TMPPREFIX="${TMPDIR%/}/zsh"
#  if [[ ! -d "$TMPPREFIX" ]]; then
#    mkdir -p "$TMPPREFIX"
#  fi
#fi

export PYTHONPATH=/usr/lib/python3.3/site-packages

export GOPATH=/home/daniel/.golang

export PKG_CONFIG_PATH=/usr/lib/pkgconfig/

#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/android-sdk/platform-tools:/opt/java/bin:/opt/java/db/bin:/opt/java/jre/bin:/usr/bin/core_perl:/usr/lib/qt4/bin:/home/daniel/maple13/bin


export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:-"$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-"$HOME/.cache"}

export PANEL_FIFO=/tmp/panel-fifo
export PANEL_HEIGHT=24
