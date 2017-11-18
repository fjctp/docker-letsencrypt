FROM alpine:3.6

RUN set -xe \
  && apk add --no-cache certbot

VOLUME ["/etc/letsencrypt"]
EXPOSE 80 443

ENTRYPOINT ["certbot"]
