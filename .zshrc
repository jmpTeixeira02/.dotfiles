export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete eza tmux fzf )
ZSH_TMUX_DEFAULT_SESSION_NAME="master"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_UNICODE=true

# Variables
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export STARSHIP_CONFIG=~/.dotfiles/.config/starship/starship.toml


## FZF
export FZF_DEFAULT_OPTS="--preview '[[ \$(file --mime {}) =~ binary ]] || batcat --style=numbers --color=always {} || echo {} is a binary file' --preview-window=right:60%"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND='fd'
export FZF_ALT_C_COMMAND='fd --type d --hidden'

# Alias
alias vim="nvim"
alias vi="nvim"
alias src="source ~/.zshrc"
alias tree="eza --tree"
alias cat='batcat --paging=never'

# Needed for TMUX Theme
export TMUX_KANAGAWA_THEME="$HOME/.dotfiles/.config/tmux/plugins/tmux-kanagawa"
chmod u+x ${TMUX_KANAGAWA_THEME}/kanagawa.tmux
chmod u+x ${TMUX_KANAGAWA_THEME}/**/*.sh

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin/

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
