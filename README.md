# FE2_ReverseProxy
Nginx Reverse Proxy to run dockerized on a RaspberryPi in front of Alamos FE2 providing proper SSL certificates from Let's encrypt.

## Acknowledgments and Thanks
This solution is based on the following project: 
[docker-nginx-certbot](https://github.com/JonasAlfredsson/docker-nginx-certbot)

## Usage
* Download latest [docker-compose.yml](https://github.com/odin568/FE2_ReverseProxy/releases)
* If not already present, create directory ```mkdir nginx_secrets```
* Start container with ```docker-compose up -d```
