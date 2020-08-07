#
# ~/.bash_profile
#
export $PATH=$PATH:$HOME.local/bin/

if [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi

if [ "$(tty)" = "/dev/tty2" ]; then
    exec startx
fi


[[ -f ~/.bashrc ]] && . ~/.bashrc
