FROM jonasal/nginx-certbot:v2.3.0
LABEL maintainer="FFW Baudenbach <webmaster@ffw-baudenbach.de>"
COPY conf.d/* /etc/nginx/conf.d/
COPY icons /etc/nginx/icons
RUN mkdir -p /etc/nginx/maps
ENV CERTBOT_EMAIL=webmaster@ffw-baudenbach.de
