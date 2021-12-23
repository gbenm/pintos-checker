FROM alpine:latest

COPY .github/docker/loader.sh /loader.sh
COPY . /pintos
COPY .github/docker/builder.sh /pintos/builder.sh

RUN apk add --update --no-cache docker
RUN ["chmod", "+x", "/loader.sh"]

ENTRYPOINT ["/loader.sh"]
