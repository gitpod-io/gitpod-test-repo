FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        gdb \
        lldb \
&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN rm -f /etc/sysctl.d/10-ptrace.conf; echo "kernel.yama.ptrace_scope = 0" > /etc/sysctl.d/10-ptrace.conf;