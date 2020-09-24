FROM debian:buster-slim

# Install apt-utils, as many package installs prefer it to be there
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install apt-utils -y && \
    DEBIAN_FRONTEND=noninteractive apt-get clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
