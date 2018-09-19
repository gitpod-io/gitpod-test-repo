FROM gitpod/workspace-full:latest

# Install mysql
USER root
RUN apt-get update && apt-get install -y \
        mysql-server \
        mysql-client \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Setup mysql server for gitpod user
USER gitpod
RUN echo '[mysqld_safe]\n\
socket          = /home/gitpod/mysqld/mysqld.sock\n\
[mysqld]\n\
user=gitpod\n\
pid-file        = /home/gitpod/mysqld/mysqld.pid\n\
socket          = /home/gitpod/mysqld/mysqld.sock\n\
datadir         = /home/gitpod/mysqld/data\n\
log_error       = /home/gitpod/mysqld/error.log\n' >> ~/.my.cnf
RUN mkdir -p ~/mysqld/data
RUN mkfifo /home/gitpod/mysqld/mysqld.sock

# Install diesel_cli
ENV PATH="$HOME/.cargo/bin:$PATH"
RUN cargo install diesel_cli --no-default-features --features mysql

USER root
