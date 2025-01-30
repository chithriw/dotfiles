#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export PATH=$PATH:"$HOME/bin"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc 
export QT_STYLE_OVERRIDE=Adwaita-Dark
export RANGER_LOAD_DEFAULT_RC=FALSE

if [[ -z "$DISPLAY" ]] && [[ "$XDG_VTNR" -eq 1 ]]; then
    startx /usr/bin/i3
fi
