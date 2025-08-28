#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
if [ -f ~/.bash_aliases ]; then 
    . ~/.bash_aliases;
fi

[[ -s "/usr/share/fzf/key-bindings.bash" ]] && source "/usr/share/fzf/key-bindings.bash"
[[ -s "/usr/share/fzf/shell/key-bindings.bash" ]] && source "/usr/share/fzf/shell/key-bindings.bash"

[[ -s "/usr/share/fzf/completion.bash" ]] && source "/usr/share/fzf/completion.bash"
[[ -s "/etc/bash_completion.d/fzf" ]] && source "/etc/bash_completion.d/fzf"

source /usr/share/autojump/autojump.bash
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

function vman(){
    man "$@" | vim -R -c "set ft=man nomod" -
}

# Print only one fastfetch msg after login
if [[ ! -e "/tmp/fastfetch_flag_${USER}" ]]; then
    fastfetch
    touch "/tmp/fastfetch_flag_${USER}"
fi

# Check if plug.vim exists
if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    echo "plug.vim not found. Downloading..."
    curl -fLo "~/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi
