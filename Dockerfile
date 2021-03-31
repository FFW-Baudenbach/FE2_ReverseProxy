FROM jonasal/nginx-certbot:1.2.0-nginx1.19.8
LABEL maintainer="FFW Baudenbach <webmaster@ffw-baudenbach.de>"
COPY conf.d/* /etc/nginx/conf.d/
ENV CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
