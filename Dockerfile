FROM ubuntu:24.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i 's|http://|https://|g' /etc/apt/sources.list.d/ubuntu.sources

CMD ["/bin/bash"]
