FROM golang:1.26.3-alpine AS builder

WORKDIR /src

COPY go.mod ./
COPY cmd ./cmd

RUN CGO_ENABLED=0 GOOS=linux go build -o /out/sample-platform-api ./cmd/api

FROM alpine:3.20

WORKDIR /app

COPY --from=builder /out/sample-platform-api /app/sample-platform-api

EXPOSE 8080

CMD ["/app/sample-platform-api"]
