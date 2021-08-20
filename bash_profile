# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="evince"

# vaapi in Firefox
export MOZ_X11_EGL=1
export LIBVA_DRIVER_NAME=i965

# Added PATH
export PATH="${PATH}:/home/andreo/.local/bin/statusbar"
export PATH="${PATH}:/home/andreo/.local/bin"
export PATH="${PATH}:/var/lib/flatpak/exports/bin"

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	exec startx
#fi
