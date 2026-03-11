# Multi-stage Dockerfile for production-grade builds
FROM golang:1.21-alpine AS builder

WORKDIR /app
COPY . .

RUN apk add --no-cache git make
RUN make build

# Final stage
FROM alpine:3.18

RUN apk add --no-cache ca-certificates curl

WORKDIR /app
COPY --from=builder /app/bin/app .

EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/health || exit 1

CMD ["./app"]
