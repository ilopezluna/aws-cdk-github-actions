FROM alpine:3.13

RUN apk --update --no-cache add nodejs npm curl bash git docker maven openjdk11

ENV PATH="/usr/local/go/bin:${PATH}"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
