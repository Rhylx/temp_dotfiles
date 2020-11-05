#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$(du "$HOME/.local/scripts" | cut -f2 | paste -sd ':')"

# Extra xinput configs :

xinput --set-prop 12 332 1

# General apps :
export EDITOR="vim"
export TERMINAL="st"
export READER="zathura"
export BROWSER="lynx"
export GBROWSER="qutebrowser"

# XDG paths :
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DOCUMENTS_DIR="$HOME/Docs"
export XDG_DOWNLOAD_DIR="$HOME/Dl"
export XDG_MUSIC_DIR="$HOME/Msc"
export XDG_PICTURES_DIR="$HOME/Pics"
export XDG_VIDEOS_DIR="$HOME/Vids"
export HISTFILE="${XDG_DATA_HOME}/bash/history"
export XAUTHORITY="${XDG_RUNTIME_DIR}/Xauthority" # This line will break some DMs.
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME}/inputrc"
#export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export ALSA_CONFIG_PATH="${XDG_CONFIG_HOME}/alsa/asoundrc"
#export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
#export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
#export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/passwd-store"
export PASSWORD_STORE_TOMB_FILE="${XDG_DATA_HOME}/passwd-store/passwd.tomb"
export PASSWORD_STORE_TOMB_KEY="${XDG_DATA_HOME}/passwd-store/passwd.key.tomb"
#export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
#export ANDROID_SDK_HOME="${XDG_CONFIG_HOME}/android"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export GOPATH="${XDG_DATA_HOME}/go"
export LYNX_CFG="${XDG_CONFIG_HOME}/lynx/lynxrc"
export LYNX_LSS="${XDG_CONFIG_HOME}/lynx/lynx.lss"
#export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible/ansible.cfg"

# Other program settings:
export DICS="/usr/share/stardict/dic/"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
export MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.
export _JAVA_AWT_WM_NONREPARENTING=1	# Java doesn't understand tiling windows
export AWT_TOOLKIT="MToolkit wmname LG3D"	#May have to install wmname

# Icons for lf :
export LF_ICONS="di=🗀 :\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"

# Generate shortcuts if file shortcutrc doesn't already exist
[ ! -f "${XDG_CONFIG_HOME}/shortcutrc" ] && shortcuts >/dev/null 2>&1 &

# Start automatically Xorg if it isn't and we are on tty1 :
[ "$(tty)" = "/dev/tty1" ] && ! pidof Xorg >/dev/null 2>&1  && exec startx
