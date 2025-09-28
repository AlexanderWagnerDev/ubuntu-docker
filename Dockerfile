FROM ubuntu:noble

RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
