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
