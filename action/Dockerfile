FROM docker:latest

RUN apk update && apk add curl

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENV GITHUB_TOKEN $secrets.GITHUB_TOKEN

ENTRYPOINT ["/entrypoint.sh"]
