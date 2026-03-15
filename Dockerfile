FROM ubuntu:latest

# Step 1: Install ca-certificates via original HTTP mirrors
RUN apt-get update && \
    apt-get install -y ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Step 2: Switch to custom HTTPS mirror
RUN sed -i \
        -e 's|URIs: http[s]*://[^ ]*/ubuntu[^ ]*|URIs: https://mirror.awdev.space/ubuntu|g' \
        -e 's|URIs: http[s]*://[^ ]*/ubuntu-ports[^ ]*|URIs: https://mirror.awdev.space/ubuntu-ports|g' \
        /etc/apt/sources.list.d/ubuntu.sources

# Step 3: Update and upgrade via HTTPS mirror
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
