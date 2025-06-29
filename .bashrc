#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias edit-hypr-conf='nano ~/.config/hypr/hyprland.conf'
alias ls='exa -a --icons'
alias la='exa -la --icons'
alias grep='grep --color=auto'
alias edit-hypr-conf='nano ~/.config/hypr/hyprland.conf'
PS1='[\u@\h \W]\$ '


export NOBLE_DISABLE_XWAYLAND=1
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export QT_QPA_PLATFORM=wayland



export PATH="/home/springaphex/.local/bin:$PATH"

hyfetch --ascii-file .local/share/fastfetch/chiikawa.txt

if(( $(date +%d)==1 ))
then
	/home/springaphex/.local/scripts/sysupdate-handler.sh
fi

eval "$(oh-my-posh init bash --config ~/.local/share/oh-my-posh/gruvbox.omp.json)"




# alias la='gols -fOscia'
