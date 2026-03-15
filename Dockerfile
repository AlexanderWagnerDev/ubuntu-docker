FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y ca-certificates && \
    sed -i \
        -e 's|URIs: http://ports\.ubuntu\.com/ubuntu-ports|URIs: https://mirror.awdev.space/ubuntu-ports|g' \
        -e 's|URIs: http://archive\.ubuntu\.com/ubuntu|URIs: https://mirror.awdev.space/ubuntu|g' \
        -e 's|URIs: http://security\.ubuntu\.com/ubuntu|URIs: https://mirror.awdev.space/ubuntu|g' \
        /etc/apt/sources.list.d/ubuntu.sources && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
