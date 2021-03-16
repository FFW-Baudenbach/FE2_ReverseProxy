FROM jonasal/nginx-certbot:1.1.0-nginx1.19.7
COPY conf.d/* /etc/nginx/conf.d/
ENV CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
