FROM alpine:3.6

RUN set -xe \
  && apk add --no-cache certbot \
  && chmod +x /entrypoint.sh

VOLUME ["/etc/letsencrypt"]
EXPOSE 80 443

ENTRYPOINT ["certbot"]
