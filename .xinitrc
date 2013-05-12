if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


systemd --user &
exec xmodmap ~/.speedswapper &
exec xrdb ~/.Xresources &
compton --backend glx --vsync opengl &
xset +fp /usr/share/fonts/local &
exec i3
