build:
	docker run --rm -it -v $$(pwd):/code fc-go-runtime bash -c "cd /code; go build -o bootstrap main.go"
	chmod +x bootstrap

deploy: build
	fun deploy -y

local-invoke: build
	fun local invoke

.PHONY: local-invoke deploy
