export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)
ZSH_TMUX_DEFAULT_SESSION_NAME="master"
ZSH_TMUX_AUTOSTART=true

# Variables
export PATH="$PATH:/opt/nvim-linux64/bin"
export XDG_CONFIG_HOME="$HOME/.config"

# Alias
alias vim="nvim"
alias vi="nvim"
alias src="source ~/.zshrc"

# Needed for TMUX Theme
export TMUX_KANAGAWA_THEME="$HOME/.dotfiles/.config/tmux/plugins/tmux-kanagawa"
chmod u+x ${TMUX_KANAGAWA_THEME}/kanagawa.tmux
chmod u+x ${TMUX_KANAGAWA_THEME}/**/*.sh

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
