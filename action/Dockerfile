FROM ubuntu:latest

RUN apt update && apt install -y docker.io curl docker-compose

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
