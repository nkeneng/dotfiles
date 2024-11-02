alias lz=lazygit
alias dockerps="docker ps --format '------------------------------------------------\nID: {{.ID}}\nNames: {{.Names}}\nImage: {{.Image}}\nCommand: {{.Command}}\nCreatedAt: {{.CreatedAt}}\nStatus: {{.Status}}\nPorts: {{.Ports}}\nSize: {{.Size}}' | awk -v RS='' -v ORS='\n' '1'"
if command -v eza &> /dev/null; then
	alias ls="eza --color=always --long --git  --icons=always --no-time"
fi
alias cl="clear"
