FROM jonasal/nginx-certbot:1.3.0-nginx1.19.10
LABEL maintainer="FFW Baudenbach <webmaster@ffw-baudenbach.de>"
COPY conf.d/* /etc/nginx/conf.d/
COPY icons /etc/nginx/icons
RUN mkdir -p /etc/nginx/maps
ENV CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
