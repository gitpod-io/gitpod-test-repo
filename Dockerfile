FROM gitpod/workspace-full:latest

RUN rm -f /etc/sysctl.d/10-ptrace.conf; echo "kernel.yama.ptrace_scope = 0" > /etc/sysctl.d/10-ptrace.conf;