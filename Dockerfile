FROM ubuntu:latest

# Set custom mirrors before any apt operations
RUN sed -i \
        # Main + updates mirror (amd64)
        -e 's|URIs: http[s]*://[^ ]*ubuntu[^-][^ ]*|URIs: https://mirror.awdev.space/ubuntu|g' \
        # Ports mirror (arm64 etc.)
        -e 's|URIs: http[s]*://[^ ]*ubuntu-ports[^ ]*|URIs: https://mirror.awdev.space/ubuntu-ports|g' \
        # Security mirror
        -e 's|URIs: http[s]*://[^ ]*ubuntu-security[^ ]*|URIs: https://mirror.awdev.space/ubuntu|g' \
        /etc/apt/sources.list.d/ubuntu.sources

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
