# Created by newuser for 5.9

alias edit-hypr-conf='nano ~/.config/hypr/hyprland.conf'
alias ls='exa -a --icons'
alias la='exa -la --icons'
alias grep='grep --color=auto'
alias edit-hypr-conf='nano ~/.config/hypr/hyprland.conf'
alias emacs='emacs -nw'

export PATH="/home/springaphex/.local/bin:$PATH"


hyfetch --ascii-file .local/share/fastfetch/chiikawa.txt

export NOBLE_DISABLE_XWAYLAND=1
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export QT_QPA_PLATFORM=wayland

eval "$(oh-my-posh init zsh --config ~/.local/share/oh-my-posh/gruvbox.omp.json)"

fpath+=~/.zsh/zsh-completions/src
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Optional: Colored completion icons
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#alias la='gols -fOscia'
