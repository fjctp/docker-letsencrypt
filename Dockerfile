FROM alpine:3.6

COPY entrypoint.sh /entrypoint.sh

RUN set -xe \
  && apk add --no-cache certbot \
  && chmod +x /entrypoint.sh

VOLUME ["/etc/letsencrypt"]
EXPOSE 80 443

ENTRYPOINT ["certbot"]
