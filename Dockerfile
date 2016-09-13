FROM anapsix/alpine-java:jdk
MAINTAINER oconnormi

ENV KARAF_VERSION=4.0.6
ENV APP_HOME="/opt/karaf"

RUN apk add --no-cache wget tar

RUN wget http://www-us.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz && \
    mkdir /opt/karaf && \
    tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-${KARAF_VERSION}.tar.gz && \
    rm apache-karaf-${KARAF_VERSION}.tar.gz && \
    mkdir -p /app && \
    ln -s ${APP_HOME}/deploy /app/ && \
    ln -s ${APP_HOME}/data /app/ && \
    ln -s ${APP_HOME}/etc /app/

VOLUME /app/data /app/deploy /app/etc

COPY entrypoint.sh /app/entrypoint.sh

EXPOSE 8101 8443 8181 1099 44444 5701 54327

ENTRYPOINT ["/bin/bash", "-c", "/app/entrypoint.sh"]
