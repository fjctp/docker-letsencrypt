#!/bin/sh

if [ "$#" -gt "0" ]; then
	certbot certonly --standalone --non-interactive $@
else
	/bin/sh
fi
