FROM debian:bullseye-slim AS builder

ARG VERSION=v0.12.1

RUN apt-get update \
  && apt-get install -y curl \
  && curl -O https://downloads.chiselstrike.com/chiselstrike/beta/chiselstrike-$VERSION-x86_64-unknown-linux-gnu.tar.gz \
  && tar xzf chiselstrike-$VERSION-x86_64-unknown-linux-gnu.tar.gz

FROM debian:bullseye-slim

COPY --from=builder /chiselstrike-x86_64-unknown-linux-gnu /usr/local/bin

EXPOSE 8080
