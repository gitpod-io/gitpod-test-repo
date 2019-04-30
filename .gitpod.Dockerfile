FROM gitpod/workspace-full

USER gitpod
RUN bash -lc "gem install jekyll bundler"
