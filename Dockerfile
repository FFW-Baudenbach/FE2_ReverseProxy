FROM  jonasal/nginx-certbot:6.2.0-nginx1.31.2
LABEL maintainer="FFW Baudenbach <webmaster@ffw-baudenbach.de>"
COPY  conf.d/ /etc/nginx/conf.d/
ENV   TZ=Europe/Berlin
ENV   CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
