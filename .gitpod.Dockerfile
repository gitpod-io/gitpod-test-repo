FROM gitpod/workspace-full


USER root
RUN apt-get update && apt-get install lib32z1 lib32ncurses5 libbz2-1.0:i386 libstdc++6:i386
RUN apt-get install g++

USER gitpod
ENV ANDROID_HOME="/workspace/real-estate-mobile/android-sdk"
ENV PATH="$PATH:$ANDROID_HOME/tools/:$ANDROID_HOME/platform-tools/"
RUN npm install nativescript -g --unsafe-perm

# Give back control
USER root
