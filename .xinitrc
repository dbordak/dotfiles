systemd --user &
exec xmodmap ~/.speedswapper &
exec xrdb ~/.Xresources &
compton -c --backend glx --vsync opengl &
xset +fp /usr/share/fonts/local &
exec i3
