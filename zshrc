
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TMPDIR=/run/media/suraj/EDITH/pip_tmp

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

#fastfetch
$HOME/.config/fastfetch/fastfetch-random.sh


# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

eval "$(thefuck --alias)"
eval "$(zoxide init zsh)"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/home/suraj/.local/bin


# pnpm
export PNPM_HOME="/home/suraj/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source ~/.config/zsh/aliases.zsh

export PATH="$PATH:/opt/flutter/bin"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/run/media/suraj/EDITH/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/run/media/suraj/EDITH/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/run/media/suraj/EDITH/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/run/media/suraj/EDITH/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
