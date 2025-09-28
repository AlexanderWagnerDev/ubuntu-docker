FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y ca-certificates

RUN sed -i 's|http://|https://|g' /etc/apt/sources.list.d/ubuntu.sources

RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
