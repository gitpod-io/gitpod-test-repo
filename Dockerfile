FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y \
    postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

RUN echo "export TEST_DOCKER=\"I was here for sure.\"" >> ~/bashrc
RUN echo "export MIAU=\"mew\"" >> ~/bashrc
RUN echo "export NEXT_CHANGE=\"mew\"" >> ~/bashrc
