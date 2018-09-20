FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y \
    postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

ENV TEST_DOCKER="I was here for sure"
ENV ENV_TEST="somecontent"
ENV NEXT_CHANGE="14"
ENV AT_TEST="42"

USER root
