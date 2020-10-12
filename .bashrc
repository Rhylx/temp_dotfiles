#
# ~/.bashrc
#

# Activate vi mode and autocd :
set -o vi
bind '"\C-l": clear-screen'
shopt -s autocd

# Autocompletion :
complete -cf sudo

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt config :
PS1='[\u@\h \W]\$ '


# lf to switch directories :
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" > /dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# Bindings :
bind '"\C-o":"lfcd\C-m"'

# GPG and SSH :
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
echo UPDATESTARTUPTTY | gpg-connect-agent > /dev/null

# Aliases :
alias ls='ls -hN --color=auto --group-directories-first'
alias lf='lfcd'
alias doas='doas --'
alias work="cd ~/Reports/stage_initiation/Rapport; vim presentation.tex"
alias cr="cabal run"
alias sdn="sudo shutdown now"
alias sctl="sudo systemctl"
alias p="sudo pacman"
alias ps="sudo pacman -S"
alias pq="pacman -Qn | grep"
alias upp="sudo pacman -Syu"
alias v="vim"
alias ka="killall"
alias g="git"
alias gs="git status"
alias gp="git push"
alias gpl="git pull"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gcl="git clone"
alias gl="git log"
alias gdl="git diff HEAD~"
alias mkd="mkdir -pv"
alias rfb="source ~/.bashrc"
alias bw="wal -i ~/.config/wall.png"
alias tfe="sdcv --utf8-output -uc \"French - English\""
alias tfg="sdcv --utf8-output -uc \"French - German\""
alias tge="sdcv --utf8-output -uc \"German - English\""
alias teg="sdcv --utf8-output -uc \"English - German\""
alias tef="sdcv --utf8-output -uc \"English - French\""
alias tgf="sdcv --utf8-output -uc \"German - French\""
alias la="ls -all"
alias ll="ls -l"
alias pi="ping -c 3 google.com"
alias tp="sensors"
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias gw="gcc -Wall -Wextra -Werror"
alias rp="pass -c"
alias pa="pass insert"
alias pg="pass generate"
alias sm="sc-im"
alias ytd="youtube-dl"
alias nm="neomutt"
alias nb="newsboat -u ~/Repos/backup/urls"
alias dtp="ddjvu --format=pdf"
alias ?="se"
