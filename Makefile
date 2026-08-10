GOLANGCI_LINT ?= golangci-lint

.PHONY: generate check-generate test lint fmt tidy

generate:
	cd proto && buf generate

check-generate: generate
	@git diff --exit-code -- gen/

test:
	go test ./...

lint:
	$(GOLANGCI_LINT) run ./...

fmt:
	go fmt ./...

tidy:
	go mod tidy
