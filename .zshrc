# Load user includes
if [ -f ~/.includes.zsh ]; then
  source ~/.includes.zsh
fi

# Prompts and history tools
eval "$(starship init zsh)"
eval "$(atuin init zsh)"
