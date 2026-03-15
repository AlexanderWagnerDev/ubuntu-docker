FROM ubuntu:24.04

RUN sed -i \
        -e 's|URIs: http[s]*://[^ ]*/ubuntu[^ ]*|URIs: https://mirror.awdev.space/ubuntu|g' \
        -e 's|URIs: http[s]*://[^ ]*/ubuntu-ports[^ ]*|URIs: https://mirror.awdev.space/ubuntu-ports|g' \
        /etc/apt/sources.list.d/ubuntu.sources

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
