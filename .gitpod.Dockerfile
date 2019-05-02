FROM gitpod/workspace-full

USER root
RUN apt-get install -y uidmap
