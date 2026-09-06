export PATH=$PATH:/home/florian/.local/bin

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#272727 \
  --color=bg:#101010 \
  --color=border:#ffffff \
  --color=fg:#b0b0b0 \
  --color=fg+:#ffffff \
  --color=gutter:#101010 \
  --color=header:#ffffff \
  --color=hl+:#d9ba73 \
  --color=hl:#d9ba73 \
  --color=info:#50585d \
  --color=marker:#ff7676 \
  --color=pointer:#ffffff \
  --color=prompt:#ffffff \
  --color=query:#b0b0b0:regular \
  --color=scrollbar:#b0b0b0 \
  --color=separator:#ffffff \
  --color=spinner:#50585d \
"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light jeffreytse/zsh-vi-mode

autoload -Uz compinit && compinit

zinit cdreplay -q

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias ll='ls -la --color'
alias vim='nvim'

if [[ -z "$TMUX" && -z "$SSH_CONNECTION" && -o interactive ]]; then
    tmux new-session -A -s main
fi

fastfetch

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
