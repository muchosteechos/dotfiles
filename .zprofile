export MOZ_DBUS_REMOTE=1 MOZ_ENABLE_WAYLAND=1

if [[ -z $DISPLAY && "$(tty)" == "/dev/tty1" ]]; then
	exec sway
fi
