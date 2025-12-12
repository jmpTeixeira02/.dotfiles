# Alias
alias vim="nvim"
alias vi="nvim"
alias src="source ~/.zshrc"
alias tree="eza --icons --tree"
alias cat='bat --paging=never'

# Lazygit switch dir on exit
lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}
