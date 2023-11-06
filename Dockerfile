FROM ubuntu:20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && \
    apt-get install -y curl=8.4.0 --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
    
CMD ["echo", "Test, Hadolint!"]