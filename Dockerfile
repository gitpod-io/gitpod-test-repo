FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y \
    x11vnc net-tools xvfb libx11-dev libxkbfile-dev libsecret-1-dev libgconf2-4 libnss3 \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

ENV NEXT_CHANGE="8"

USER root
