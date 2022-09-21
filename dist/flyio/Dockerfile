FROM fedora:36
ARG CHISEL_VERSION=v0.12.1
RUN curl -O https://downloads.chiselstrike.com/chiselstrike/beta/chiselstrike-$CHISEL_VERSION-x86_64-unknown-linux-gnu.tar.gz
RUN tar xzf chiselstrike-$CHISEL_VERSION-x86_64-unknown-linux-gnu.tar.gz
RUN mv chiselstrike-x86_64-unknown-linux-gnu/* /usr/local/bin
EXPOSE 8080/tcp
EXPOSE 50051/tcp
CMD /usr/local/bin/chiseld \
        --api-listen-addr 0.0.0.0:8080 \
        --rpc-listen-addr 0.0.0.0:50051
