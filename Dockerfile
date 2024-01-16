# Dockerfile for MyBinder with required dependencies

FROM jupyter/base-notebook

USER root

# Install build dependencies
RUN apt-get update && \
    apt-get install proot qemu-user-static
    
USER $NB_UID

# Additional configuration or instructions for your project can be added here

# CMD or ENTRYPOINT for running your application
