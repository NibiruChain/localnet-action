FROM ubuntu:latest

RUN apt update && apt install -y docker.io

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
