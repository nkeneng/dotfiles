
# Zoxide setup
eval "$(zoxide init zsh)"

alias cdl='zoxide query -l -s | less'

if [[ ! "$PATH" == *$HOME/.local/bin* ]]; then
	PATH="${PATH:+${PATH}:}$HOME/.local/bin"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

code-server() {
	docker stop code-server
	docker rm code-server
	docker run -d \
		--name=code-server \
		-e PUID=1000 \
		-e PGID=1000 \
		-p 127.0.0.1:8443:8443 \
		-v ${HOME}/containers/code-server/config:/config \
		-v "${PWD}:/config/workspace" \
		--network nosql \
		--restart unless-stopped \
		code-server
}

code() {
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
