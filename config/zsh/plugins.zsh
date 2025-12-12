source ~/.nix-profile/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle eza
antigen bundle command-not-found
antigen bundle git
antigen bundle tmux
antigen bundle kubectl
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marlonrichert/zsh-autocomplete@main
antigen apply

source <(kubectl completion zsh)
