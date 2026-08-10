GOLANGCI_LINT ?= golangci-lint

.PHONY: generate check-generate test lint fmt tidy

generate:
	cd proto && buf generate

check-generate: generate
	@if [ -n "$$(git status --porcelain -- gen/)" ]; then \
		echo "generated Go code is out of date"; \
		git diff -- gen/; \
		git status --short -- gen/; \
		exit 1; \
	fi

test:
	go test ./...

lint:
	$(GOLANGCI_LINT) run ./...

fmt:
	go fmt ./...

tidy:
	go mod tidy
