export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
DISABLE_MAGIC_FUNCTIONS="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="false"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-interactive-cd)

source $ZSH/oh-my-zsh.sh

bindkey -v

export EDITOR="nvim"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch $(uname -m)"

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

alias nv="nvim"
alias v="vim"
alias ..="z .."
alias -s md=glow
alias -s rust=bat

if [ -f "$HOME/.secrets" ]; then
  source "$HOME/.secrets"
fi

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"

mkcd() {
  mkdir -p "$1" && cd "$1"
}
