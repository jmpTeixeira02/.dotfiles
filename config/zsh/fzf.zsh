export FZF_DEFAULT_OPTS="
  --tmux=center,90%,90%
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --preview-window=right:60%
  --walker-skip=.git,node_modules
"
export FZF_DEFAULT_COMMAND='fd '


# Preview file in file preview
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
"
export FZF_CTRL_T_COMMAND='fd --type f'

# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --preview 'eza --icons --tree --color=always {}'
"
export FZF_ALT_C_COMMAND='fd --type d --hidden'

source <(fzf --zsh)
