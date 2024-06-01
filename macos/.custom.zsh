
# Zoxide setup
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

alias cdl='zoxide query -l -s | less'
alias cd=z

if [[ ! "$PATH" == *$HOME/.local/bin* ]]; then
	PATH="${PATH:+${PATH}:}$HOME/.local/bin"
fi

alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

alias para="prlctl"
alias ubuntu="ssh ubuntu"

export OLLAMA_ORIGINS="app://obsidian.md*,chrome-extension://*"

export PATH=$PATH:/Users/stevennkeneng/Library/Python/3.9/bin
alias wm="/Users/stevennkeneng/Documents/Website/42-Berlin/libft-war-machine/grademe.sh"


function wm_libft() {
    wm $(find . -type f -name '*.c' | sed 's/\.c$//')
}

export BAT_THEME=TwoDark

alias norminette="find . -type f -name '*.h' -o -name '*.c' ! -name 'main.c' -exec norminette {} +"

alias port-forward="~/Documents/Bash_Scripts/port-forward.sh"
alias port-delete="~/Documents/Bash_Scripts/del-port-forward.sh"
alias create-repo="~/Documents/Bash_Scripts/create-repository.sh"

eval "$(gh copilot alias -- zsh)"

source ~/.iterm2_shell_integration.zsh
