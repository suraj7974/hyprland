# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias cl='clear'
alias codebase='cd /run/media/suraj/JARVIS/Codebase/'
alias jarvis='cd /run/media/suraj/JARVIS/'
alias edith='cd /run/media/suraj/EDITH'
alias hacking='cd Hacking && ./eDEX-UI-Linux-x86_64.AppImage'
alias almighty='git'
alias universal='git'
alias domain-expansion='conda activate'
alias poki='pokemon-colorscripts'
alias tm='tmux'
alias mjarvis='sudo mount /dev/nvme0n1p4 /run/media/suraj/JARVIS'
alias medith='sudo mount /dev/nvme0n1p3 /run/media/suraj/EDITH'
alias passwi='nmcli device wifi show-password'
alias anime='viu'
alias sky='astroterm'
alias ttest='smassh'
alias manga='manga-tui'
alias super_saiyan="echo 'Powering up... ⚡' && sudo dnf update -y && sudo dnf autoremove -y && sudo cpupower frequency-set -g performance && echo '💥 Power level over 9000!'"
alias gch='git checkout $(git branch --sort=-committerdate | fzf)'
alias bonsai='cbonsai -l'
alias momo='momoisay -f'
alias song='termusic'
alias cav='glava --desktop --force-mod=circle'
alias transfer='python -m http.server 80000'



arise() {
    # Open a new terminal and start tmux
    alacritty -e tmux new-session -A -s root \; \
        send-keys "spotify_player" C-m \; \
        split-window -h "pipes" \; \
        split-window -v "cmatrix -C cyan" \; \
        select-pane -t 0
}

kl() {
	kill -9 $(ps aux | fzf | awk '{print $2}' )
}

zi() {
  local dir
  dir=$(zoxide query -l | fzf --prompt="zoxide > ") && cd "$dir"
}
de() {
    local dir
    dir=$(zoxide query -l | fzf)
    [ -n "$dir" ] && cd "$(zoxide query "$dir")"
}
