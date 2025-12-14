FROM  jonasal/nginx-certbot:6.0.1-nginx1.29.3
LABEL maintainer="FFW Baudenbach <webmaster@ffw-baudenbach.de>"
COPY  etc/ /etc/
RUN   rm -f /etc/nginx/maps/README.md
ENV   TZ=Europe/Berlin
ENV   CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
