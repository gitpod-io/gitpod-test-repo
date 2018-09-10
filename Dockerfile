FROM gitpod/workspace-full:latest

RUN echo "export TEST_DOCKER=\"I was here for sure.\"" >> ./bashrc

RUN apt-get update && apt-get install -y \
    postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
