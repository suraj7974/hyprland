typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jonathan"

plugins=(
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r

fastfetch #Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

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

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/home/suraj/.local/bin
#source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run p10k configure or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
