FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y ca-certificates unattended-upgrades cron && \
    dpkg-reconfigure -f noninteractive unattended-upgrades && \
    sed -i \
        -e 's|URIs: http://ports\.ubuntu\.com/ubuntu-ports|URIs: https://mirror.awdev.space/ubuntu-ports|g' \
        -e 's|URIs: http://archive\.ubuntu\.com/ubuntu|URIs: https://mirror.awdev.space/ubuntu|g' \
        -e 's|URIs: http://security\.ubuntu\.com/ubuntu|URIs: https://mirror.awdev.space/ubuntu|g' \
        /etc/apt/sources.list.d/ubuntu.sources && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY /etc/apt/apt.conf.d/20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades
COPY /etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades

RUN echo "0 * * * * root /usr/bin/unattended-upgrade" > /etc/cron.d/unattended-upgrade
RUN chmod 0644 /etc/cron.d/unattended-upgrade && chmod 0664 /etc/apt/apt.conf.d/20auto-upgrades

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
