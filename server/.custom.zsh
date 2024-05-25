export PATH="$PATH:/opt/nvim-linux64/bin"

code() {
        docker stop 42
        docker rm 42
        docker run -it \
                --name 42 \
                -v ${PWD}:/home/coder/code \
                -v ~/.ssh:/home/coder/.ssh \
                registry.stevenshomelab.com/42-env
}
