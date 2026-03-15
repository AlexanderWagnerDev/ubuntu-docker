FROM ubuntu:latest

# Set custom mirrors before any apt operations
RUN sed -i \
        # Matches archive.ubuntu.com/ubuntu AND security.ubuntu.com/ubuntu
        -e 's|URIs: http[s]*://[^ ]*/ubuntu[^ ]*|URIs: https://mirror.awdev.space/ubuntu|g' \
        # Ports mirror (arm64 etc.): ports.ubuntu.com/ubuntu-ports
        -e 's|URIs: http[s]*://[^ ]*/ubuntu-ports[^ ]*|URIs: https://mirror.awdev.space/ubuntu-ports|g' \
        /etc/apt/sources.list.d/ubuntu.sources

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
