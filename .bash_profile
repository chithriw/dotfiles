#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export EDITOR=vim

export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export  QT_STYLE_OVERRIDE=Adwaita-Dark.

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

export PATH=$PATH:$HOME/bin
rfkill unblock all
