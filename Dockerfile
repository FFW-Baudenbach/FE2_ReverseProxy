FROM jonasal/nginx-certbot:1.1.0-nginx1.19.7
LABEL maintainer="FFW Baudenbach <webmaster@ffw-baudenbach.de>"
COPY conf.d/* /etc/nginx/conf.d/
ENV CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
