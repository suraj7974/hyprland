if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="random"


plugins=(git zsh-syntax-highlighting)

plugins=(
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


# Display Pokemon-colorscripts
#pokemon-colorscripts --no-title -s -r

fastfetch

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
eval "$(thefuck --alias)"

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
alias domain-expansion='conda activate'
alias poki='pokemon-colorscripts'
alias tm='tmux'
alias mjarvis='sudo mount /dev/nvme0n1p4 /run/media/suraj/JARVIS'
alias medith='sudo mount /dev/nvme0n1p3 /run/media/suraj/EDITH'
alias ujarvis='sudo umount /run/media/suraj/JARVIS'
alias uedith='sudo umount /run/media/suraj/EDITH'
alias passwi='nmcli device wifi show-password'
alias anime='ani-cli'
alias sky='astroterm'
alias ttest='smassh'
alias manga='manga-tui'
alias super_saiyan="echo 'Powering up... ⚡' && sudo dnf update -y && sudo dnf autoremove -y && sudo cpupower frequency-set -g performance && echo '💥 Power level over 9000!'"
alias gch='git checkout $(git branch --sort=-committerdate | fzf)'

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/home/suraj/.local/bin


# pnpm
export PNPM_HOME="/home/suraj/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

arise() {
    # Open a new terminal and start tmux
    alacritty -e tmux new-session -A -s root \; \
        send-keys "spt" C-m \; \
        split-window -h "pipes" \; \
        split-window -v "cmatrix -C cyan" \; \
        select-pane -t 0
}

kl() {
  kill -9 $(ps aux | fzf | awk '{print $2}')
}


export PATH="$PATH:/opt/flutter/bin"
