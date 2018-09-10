FROM gitpod/workspace-full:latest

RUN echo "export TEST_DOCKER=\"I was here for sure.\"" >> ./bashrc
