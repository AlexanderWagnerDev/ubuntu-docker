FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates unattended-upgrades cron && \
    dpkg-reconfigure -f noninteractive unattended-upgrades && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i 's|http://|https://|g' /etc/apt/sources.list.d/ubuntu.sources

COPY /etc/apt/apt.conf.d/20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades
COPY /etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades

RUN echo "0 * * * * root /usr/bin/unattended-upgrade" > /etc/cron.d/unattended-upgrade
RUN chmod 0644 /etc/cron.d/unattended-upgrade && chmod 0664 /etc/apt/apt.conf.d/20auto-upgrades

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
