FROM cribl/scope:1.3.0-rc1 AS appscopebuild

FROM ubuntu:18.04

RUN apt update \
    && apt install -y \
      default-jdk \
      default-jre \
    && rm -rf /var/lib/apt/lists/*

COPY --from=appscopebuild /usr/local/lib/libscope.so /usr/local/lib/libscope.so
COPY --from=appscopebuild /usr/local/bin/scope /usr/local/bin/scope

RUN mkdir -p /opt/java_http
COPY SimpleHttpServer.java /opt/java_http/SimpleHttpServer.java
RUN javac -d /opt/java_http/ /opt/java_http/SimpleHttpServer.java

ENV LD_PRELOAD="/usr/local/lib/libscope.so"
ENV SCOPE_SNAPSHOT_BACKTRACE=true

CMD ["java", "-classpath", "/opt/java_http/", "SimpleHttpServer"]
