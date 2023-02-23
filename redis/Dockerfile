FROM ubuntu:18.04

ARG REDIS_URL=https://github.com/michalbiesek/redis/tarball/info-bug

RUN apt update -y && \
    apt install -y gcc gdb automake autoconf libtool make wget && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd /tmp && wget ${REDIS_URL} -O redis.tgz \
    && mkdir redis \
    && tar -zxvf redis.tgz --directory redis --strip-components=1 \
    && cd redis && make noopt \
    && cp ./src/redis-server /bin/ \
    && cp ./src/redis-cli /bin/ \
    && rm -rf redis.tar.gz && rm -rf redis
