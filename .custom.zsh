
# Zoxide setup
eval "$(zoxide init zsh)"

alias cdl='zoxide query -l -s | less'

if [[ ! "$PATH" == *$HOME/.local/bin* ]]; then
	PATH="${PATH:+${PATH}:}$HOME/.local/bin"
fi
