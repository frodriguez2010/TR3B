# ===============================================================================
# Dockerfile
#   Builds TR3B and the executable binary, "TR3Bd"
#
#
# It is based on Ubuntu 16.04 LTS
# ===============================================================================

# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER freak

# ===============================================================================
# Env. Setup
#

# Update repository
RUN apt-get update && apt-get -y upgrade

# ----------------------------------------------------------
# Dependencies
# ----------------------------------------------------------

# Basic Dependencies
#
RUN apt-get install -y git \
            ntp \
            unzip \
            build-essential \
            libssl-dev \
            libdb-dev \
            libdb++-dev \
            libboost-all-dev \
            libqrencode-dev \
            libminiupnpc-dev \
            miniupnpc

# ===============================================================================
# Set working directory
#
WORKDIR /work

# ===============================================================================
# Install configuration
#

RUN mkdir -p /root/.TR3B/
COPY docker/config/TR3B.conf /root/.TR3B/
RUN chmod u+r-wx,g-rwx,o-rwx /root/.TR3B/TR3B.conf

# ===============================================================================
# System Initialization
#

## Copy folders
COPY share /work/share
COPY src /work/src

RUN cd src && \
    /usr/bin/make -f makefile.unix USE_UPNP=1 USE_IPV6=1 USE_QRCODE=1

# Set default CMD
CMD /work/src/TR3Bd && tail -f -n 10 /root/.TR3B/debug.log

EXPOSE 22331 11223 11332 33221
