#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias gl='git log --all --graph --oneline --decorate'
alias gs='git status'
alias xc='xclip -selection clipboard'
alias yt-dlpc='yt-dlp -o "%(title)s.%(ext)s"'
alias xc='xclip -selection clipboard'
alias a='wikiman'

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

function vman(){
    man "$@" | vim -R -c "set ft=man nomod" -
}

# Print only one fastfetch msg after login
if [[ ! -e "/tmp/fastfetch_flag_${USER}" ]]; then
    fastfetch
    touch "/tmp/fastfetch_flag_${USER}"
fi
