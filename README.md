# docker-letsencrypt
This image has certbot and ngnix built-in, so getting a SSL certificate is simple.

## Get a SSL Certificate
```
docker run -it --rm \
  -v {SSL}:/etc/letsencrypt \
  -p 80:80 \
  -p 443:443 \
  fjctp/letsencrypt \
  --agree-tos \
  -m {YOUR_EMAIL@ABC.COM} \
  -d {YOUR_DOMAIN}
```
The SSL certificate will be located at `{SSL}/live/{YOUR_DOMAIN}`

## Interactive Bash session
```
docker run -it --rm \
  -v $PWD:/etc/letsencrypt \
  -p 80:80 \
  -p 443:443 \
  fjctp/letsencrypt
```
