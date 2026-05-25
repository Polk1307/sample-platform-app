API_BIN := bin/api

.PHONY: fmt
fmt:
	go fmt ./...

.PHONY: test
test:
	go test ./...

.PHONY: build
build: fmt test
	mkdir -p bin
	go build -o $(API_BIN) ./cmd/api

.PHONY: run
run:
	go run ./cmd/api

.PHONY: docker-build
docker-build:
	docker build -t sample-platform-api:local .

.PHONY: compose-up
compose-up:
	docker compose up --build

.PHONY: compose-down
compose-down:
	docker compose down

.PHONY: clean
clean:
	rm -f $(API_BIN)
