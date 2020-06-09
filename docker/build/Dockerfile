# https://hub.docker.com/_/adoptopenjdk?tab=tags&page=1&name=12.0.1
FROM adoptopenjdk:12.0.1_12-jdk-hotspot-bionic as sbt

SHELL ["/bin/bash", "-l", "-c"]

RUN mkdir /project
COPY ./ /project
WORKDIR /project

ENV PATH $PATH:/root/.sdkman/bin/sdkman-init.sh

RUN apt-get update && \
    apt-get install zip -y && \
    curl -s "https://get.sdkman.io" | bash && \
    source "$HOME/.sdkman/bin/sdkman-init.sh" && \
    sdk install sbt && \
    sbt dist

# https://hub.docker.com/_/adoptopenjdk?tab=tags&page=1&name=12.0.1
FROM adoptopenjdk:12.0.1_12-jre-hotspot-bionic

RUN apt-get update && \
    apt-get install zip -y

RUN mkdir /project
COPY --from=sbt /project/target/universal/playframework-sample-1.0-SNAPSHOT.zip /project
WORKDIR /project
RUN unzip ./playframework-sample-1.0-SNAPSHOT.zip && \
    chmod +x /project/playframework-sample-1.0-SNAPSHOT/bin/playframework-sample

CMD ["/project/playframework-sample-1.0-SNAPSHOT/bin/playframework-sample", "-Dplay.http.secret.key=playframeworksample"]
EXPOSE 9000
