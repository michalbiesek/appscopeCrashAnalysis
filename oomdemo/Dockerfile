FROM ubuntu:latest

RUN apt update -y && \
    apt install -y gcc && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY main.c /opt/main.c
RUN gcc /opt/main.c -o /opt/oomDemoProcess

CMD ["/opt/oomDemoProcess"]
