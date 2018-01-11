FROM frolvlad/alpine-glibc:latest
LABEL maintainer "Karolis Stasaitis <stkarolis@gmail.com>"

ENV VERSION=0.15.40

RUN adduser factorio -D

WORKDIR /home/factorio

RUN \
    apk add --no-cache curl && \
    su factorio -c "\
    curl -sSL \"https://www.factorio.com/get-download/$VERSION/headless/linux64\" -o /tmp/factorio_headless_x64_$VERSION.tar.xz && \
    tar -xf /tmp/factorio_headless_x64_$VERSION.tar.xz && \
    rm -rf /tmp/factorio_headless_x64_$VERSION.tar.xz\
    " && \
    apk del curl

USER factorio

EXPOSE 34197/udp

CMD ./factorio/bin/x64/factorio --start-server-load-latest --server-settings ./factorio/data/server-settings.json
