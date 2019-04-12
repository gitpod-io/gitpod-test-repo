FROM gitpod/workspace-full

USER gitpod
RUN bash -lc "rustup install nightly"

USER root