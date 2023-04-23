FROM rust:latest as builder

RUN cargo install agate

FROM debian:stable AS runner
WORKDIR /app

COPY --from=builder /usr/local/cargo/bin/agate /usr/bin/agate

VOLUME ["/app/content", "/app/certs"]
EXPOSE 1965
CMD agate --content /app/content --addr [::]:1965 --addr 0.0.0.0:1965 --certs /app/certs --hostname $AGATE_HOST