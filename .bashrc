#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Run neofetch when first open st erminal
ST_COUNTER=0
for pid in $(pidof -x st); do
    ST_COUNTER=$((ST_COUNTER+1))
done
if [[ $ST_COUNTER -le 1 ]]; then
    if [[ -n $(which neofetch) ]]; then
        neofetch
    fi
fi
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias gs='git status'
PS1='[\u@\h \W]\$ '
alias gl='git log --all --graph --oneline --decorate'
alias xc='xclip -selection clipboard'
alias yt-dlpc='yt-dlp -o "%(title)s.%(ext)s" -P "./"'
rfkill unblock all

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
