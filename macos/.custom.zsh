
# Zoxide setup
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

set -o vi

alias cdl='zoxide query -l -s | less'
alias cd=z

if [[ ! "$PATH" == *$HOME/.local/bin* ]]; then
	PATH="${PATH:+${PATH}:}$HOME/.local/bin"
fi

# alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

alias para="prlctl"
alias ubuntu="ssh ubuntu"

export OLLAMA_ORIGINS="app://obsidian.md*,chrome-extension://*"

export PATH=$PATH:/Users/stevennkeneng/Library/Python/3.9/bin
alias wm="/Users/stevennkeneng/Documents/Website/42-Berlin/libft-war-machine/grademe.sh"


function wm_libft() {
    wm $(find . -type f -name '*.c' | sed 's/\.c$//')
}

export BAT_THEME=TwoDark

alias norminette="find . -type f -name '*.h' -o -name '*.c' ! -name 'main.c' ! -name 'test.c' -exec norminette {} +"

alias port-forward="~/Documents/Bash_Scripts/port-forward.sh"
alias port-delete="~/Documents/Bash_Scripts/del-port-forward.sh"
alias create-repo="~/Documents/Bash_Scripts/create-repository.sh"

eval "$(gh copilot alias -- zsh)"

source ~/.iterm2_shell_integration.zsh

# export USER="snkeneng"
export USER="stevennkeneng"
export MAIL="snkeneng@student.42berlin.de"

export EDITOR=nvim
alias obs="cd '/Users/stevennkeneng/Library/Mobile Documents/iCloud~md~obsidian/Documents/Coding journey' && nvim ."


# nvim config switcher
alias nvim-lazy="NVIM_APPNAME=lazy_nvim nvim"

function nvims() {
  items=("default" "lazy_nvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"

alias bashly='docker run --rm -it --user $(id -u):$(id -g) --volume "$PWD:/app" dannyben/bashly'

export ANDROID_HOME=/Users/stevennkeneng/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

42-code() {
	docker stop 42
	docker rm 42
	docker run -it \
		--name 42 \
		-e PUID=1002 \
		-e PGID=1002 \
		-v ${PWD}:/home/coder/code \
		-v ~/.ssh:/home/coder/.ssh \
		registry.stevenshomelab.com/42-env
}

