FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y docker.io

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]