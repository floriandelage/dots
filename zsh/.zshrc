# ~/.zshrc

# --- Instant Prompt ----------------------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Environment -------------------------------------------------------------
bindkey -e

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

typeset -U path
path=(
	$HOME/.local/bin
	$path
)

# --- History -----------------------------------------------------------------

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# --- Zinit -------------------------------------------------------------------
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# --- Plugins -----------------------------------------------------------------
zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

# --- Completions -------------------------------------------------------------
zstyle ':completion:*' menu no
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':fzf-tab:complete:(cd|__zoxide_z):*' fzf-preview 'eza -1 --color=always $realpath'

# --- Aliases -----------------------------------------------------------------
alias cat='bat -p'
alias find='fd'
alias grep='rg'

alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first'
alias la='eza -lah --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons'

alias t='tmux'
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tn='tmux new -s'
alias tk='tmux kill-session -t'

alias vim='nvim'

# --- Tools -------------------------------------------------------------------
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# --- Prompt ------------------------------------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
