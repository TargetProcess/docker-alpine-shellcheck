FROM alpine:3.6

RUN apk update && apk add ca-certificates && update-ca-certificates
RUN apk --no-cache add openssl

RUN wget https://storage.googleapis.com/shellcheck/shellcheck-latest.linux.x86_64.tar.xz && \
    tar xvfJ shellcheck-latest.linux.x86_64.tar.xz && \
    chmod +x shellcheck-latest/shellcheck && \
    mv shellcheck-latest/shellcheck /usr/bin/shellcheck && \
    rm shellcheck-latest.linux.x86_64.tar.xz && \
    rm -rf shellcheck-latest

WORKDIR /mnt