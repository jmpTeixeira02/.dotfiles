export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)
ZSH_TMUX_DEFAULT_SESSION_NAME="master"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_UNICODE=true

# Variables
export PATH="$PATH:/opt/nvim-linux64/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export STARSHIP_CONFIG=~/.dotfiles/.config/starship/starship.toml

# Alias
alias vim="nvim"
alias vi="nvim"
alias src="source ~/.zshrc"

# Needed for TMUX Theme
export TMUX_KANAGAWA_THEME="$HOME/.dotfiles/.config/tmux/plugins/tmux-kanagawa"
chmod u+x ${TMUX_KANAGAWA_THEME}/kanagawa.tmux
chmod u+x ${TMUX_KANAGAWA_THEME}/**/*.sh

export THEME_KANAGAWA_COLOR_BACKGROUND="#181616"
export THEME_KANAGAWA_COLOR_BLACK="#0D0C0C"
export THEME_KANAGAWA_COLOR_BLUE="#8BA4B0"
export THEME_KANAGAWA_COLOR_BRIGHTBLACK="#A6A69C"
export THEME_KANAGAWA_COLOR_BRIGHTBLUE="#7FB4CA"
export THEME_KANAGAWA_COLOR_BRIGHTCYAN="#7AA89F"
export THEME_KANAGAWA_COLOR_BRIGHTGREEN="#87A987"
export THEME_KANAGAWA_COLOR_BRIGHTPURPLE="#938AA9"
export THEME_KANAGAWA_COLOR_BRIGHTRED="#E46876"
export THEME_KANAGAWA_COLOR_BRIGHTWHITE="#C5C9C5"
export THEME_KANAGAWA_COLOR_BRIGHTYELLOW="#E6C384"
export THEME_KANAGAWA_COLOR_CURSORCOLOR="#C8C093"
export THEME_KANAGAWA_COLOR_CYAN="#8EA4A2"
export THEME_KANAGAWA_COLOR_FOREGROUND="#C5C9C5"
export THEME_KANAGAWA_COLOR_GREEN="#8A9A7B"
export THEME_KANAGAWA_COLOR_NAME="Kanagawa-Dragon"
export THEME_KANAGAWA_COLOR_PURPLE="#A292A3"
export THEME_KANAGAWA_COLOR_RED="#C4746E"
export THEME_KANAGAWA_COLOR_SELECTIONBACKGROUND="#2D4F67"
export THEME_KANAGAWA_COLOR_WHITE="#C8C093"
export THEME_KANAGAWA_COLOR_YELLOW="#C4B28A"

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
