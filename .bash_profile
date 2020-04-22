#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$(du "$HOME/.local/scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="vim"
export TERMINAL="st"
export READER="zathura"
export BROWSER="qutebrowser"
export CLIBROWSER="w3m"
