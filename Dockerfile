FROM debian:bullseye-slim AS builder

RUN apt-get update
RUN apt-get install -y curl

WORKDIR /workspace
COPY ./ ./

RUN ./scripts/download-fs.sh

FROM --platform=linux/arm64 scratch AS myalpine-arm64

COPY --from=builder /workspace/alpine-fx-aarch64 /

CMD ["/bin/sh"]

FROM --platform=linux/amd64 scratch AS myalpine-amd64

COPY --from=builder /workspace/alpine-fx-x86_64 /

CMD ["/bin/sh"]