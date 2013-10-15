if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

DEFAULTSESSION=bspwm

systemd --user &
xrandr --output HDMI1 --primary &
xrandr --output LVDS1 --right-of HDMI1 &
exec xrdb ~/.Xresources &
#compton --backend glx --vsync opengl &
#urxvtd -q -f -o &
sxhkd &
xsetroot -cursor_name left_ptr &
case "$1" in
	i3) exec i3 ;;
	*) exec $DEFAULTSESSION -s "$PANEL_FIFO" -p W ;;
esac
