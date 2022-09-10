FROM alpine:3.13

RUN apk --update --no-cache add nodejs npm curl bash git docker openjdk11

ENV JAVA_HOME=/usr/lib/jvm/default-jvm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
