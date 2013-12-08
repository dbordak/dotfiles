if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#xrandr --output HDMI1 --primary &
#xrandr --output LVDS1 --right-of HDMI1 &
exec xrdb ~/.Xresources &
#compton --backend glx --vsync opengl &
#urxvtd -q -f -o &
sxhkd &
xsetroot -cursor_name left_ptr &
setxkbmap -option caps:shiftlock &
rulc -l > /dev/null || ruld &
exec bspwm 2> ~/.bspwm.log
#exec herbstluftwm
