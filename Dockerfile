FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y ca-certificates

COPY etc/apt/sources.list.d/ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources

RUN apt-get update && \
    apt-get upgrade -y && \
     apt-get install -y ca-certificates && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
