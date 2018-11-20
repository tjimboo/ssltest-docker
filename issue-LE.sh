docker run -it --rm \
-v /home/tjimboo/ssltest-nginx/etc-letsencrypt:/etc/letsencrypt:z \
-v /home/tjimboo/ssltest-nginx/var-letsencrypt:/var/lib/letsencrypt:z \
-v /home/tjimboo/ssltest-nginx/letsencrypt-site:/data/letsencrypt:z \
-v /home/tjimboo/ssltest-nginx/log-letsencrypt:/var/log/letsencrypt:z \
certbot/certbot \
certonly --webroot \
--email relic@deathrowinmates.net --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d dri.deathrowinmates.net
