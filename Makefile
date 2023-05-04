.PHONY: env
env:
	cp .envrc-develop .envrc
	direnv allow .

.PHONY: setup
setup:
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(GOBIN) 

.PHONY: lint
lint:
	golangci-lint run
