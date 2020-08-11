#!/bin/bash

if [[ -d /etc/letsencrypt/live/{{ DOMAIN_NAME }} ]]
then
	/usr/local/bin/certbot renew -n
	systemctl kill -s HUP --kill-who=main nginx
else
	/usr/local/bin/certbot certonly --dns-cloudflare --dns-cloudflare-credentials /etc/nginx/cloudflare.ini --agree-tos -n -d *.{{ DOMAIN_NAME }} -d {{ DOMAIN_NAME }} -m {{ EMAIL_ADDRESS }}
	systemctl restart nginx
fi
