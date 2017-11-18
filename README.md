# docker-letsencrypt
This image has certbot and ngnix built-in, so getting a SSL certificate is simple.

## Get a new SSL certificate
```
docker run -it --rm \
  -v {SSL}:/etc/letsencrypt \
  -p 80:80 \
  -p 443:443 \
  fjctp/letsencrypt \
  certonly \
  --standalone \
  --non-interactive \
  --agree-tos \
  -m {YOUR_EMAIL@ABC.COM} \
  -d {YOUR_DOMAIN}
```
The SSL certificate will be located at `{SSL}/live/{YOUR_DOMAIN}`

