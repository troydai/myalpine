FROM debian:bullseye AS builder

RUN apt-get update
RUN apt-get install -y curl

WORKDIR /workspace
COPY ./checksum ./
RUN curl -sLO https://dl-cdn.alpinelinux.org/alpine/v3.17/releases/aarch64/alpine-minirootfs-3.17.2-aarch64.tar.gz
RUN sha256sum -c checksum
RUN mkdir -p /alpine-root && tar -xvzf alpine-minirootfs-3.17.2-aarch64.tar.gz -C /alpine-root

FROM scratch

COPY --from=builder /alpine-root /

CMD ["/bin/sh"]
