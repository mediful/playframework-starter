# https://hub.docker.com/_/adoptopenjdk?tab=tags&page=1&name=12.0.1
FROM adoptopenjdk:12.0.1_12-jdk-hotspot-bionic

SHELL ["/bin/bash", "-l", "-c"]

ENV PATH $PATH:/root/.sdkman/bin/sdkman-init.sh

RUN apt-get update && \
    apt-get install zip -y && \
    curl -s "https://get.sdkman.io" | bash && \
    source "$HOME/.sdkman/bin/sdkman-init.sh" && \
    sdk install sbt
