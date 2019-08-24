FROM gitpod/workspace-full


USER root
RUN apt-get update && apt-get install -yq lib32z1 lib32ncurses5-dev libbz2-1.0 libstdc++6
RUN apt-get install g++

USER gitpod
ENV ANDROID_HOME="/workspace/real-estate-mobile/android-sdk"
ENV PATH="$PATH:$ANDROID_HOME/tools/:$ANDROID_HOME/platform-tools/"
RUN npm install nativescript -g --unsafe-perm

# Give back control
USER root
