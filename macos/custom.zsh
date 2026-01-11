
alias cdl='zoxide query -l -s | less'
alias cd=z
alias obs="cd '/Users/stevennkeneng/Library/Mobile Documents/iCloud~md~obsidian/Documents/Coding journey' && nvim ."

export OLLAMA_ORIGINS="app://obsidian.md*,chrome-extension://*"
export BAT_THEME=TwoDark
export USER="stevennkeneng"
export EDITOR=nvim


# # nvim config switcher for multiple configs
# alias nvim-lazy="NVIM_APPNAME=lazy_nvim nvim"

# function nvims() {
#   items=("default" "lazy_nvim")
#   config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
#   if [[ -z $config ]]; then
#     echo "Nothing selected"
#     return 0
#   elif [[ $config == "default" ]]; then
#     config=""
#   fi
#   NVIM_APPNAME=$config nvim $@
# }

# bindkey -s ^a "nvims\n"