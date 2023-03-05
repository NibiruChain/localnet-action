FROM ubuntu:latest

RUN yum update &&
    yum install -y docker.io

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
