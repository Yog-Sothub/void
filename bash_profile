# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Default programs:
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="evince"

# Added PATH
export PATH="${PATH}:/home/andreo/.local/bin/statusbar"
