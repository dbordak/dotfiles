if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

systemd --user &
xrandr --output HDMI1 --left-of LVDS1 &
exec xrdb ~/.Xresources &
#compton --backend glx --vsync opengl &
xset +fp /usr/share/fonts/local &
xset +fp /usr/share/fonts/misc &
urxvtd -q -f -o &
sxhkd &
xsetroot -cursor_name left_ptr &
exec bspwm -s "$PANEL_FIFO" -p W
