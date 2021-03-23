# FE2_ReverseProxy
Nginx Reverse Proxy to run dockerized on a RaspberryPi in front of Alamos FE2 providing proper SSL certificates from Let's encrypt.

## Acknowledgments and Thanks
The solution is based on the following project: [JonasAlfredsson/docker-nginx-certbot](https://github.com/JonasAlfredsson/docker-nginx-certbot)  
This repository grabs the prepared image from DockerHub and adds our specific configuration as well as the required mail address for Certbot. In addition we can store the docker-compose.yml here.

## How to use
### First time setup
* Create directory to store persistent data: ```mkdir nginx_secrets```
* Login to DockerHub: ```docker login -u odin568 -p *******```
### Starting/Updating container
* Download latest [docker-compose.yml](https://github.com/odin568/FE2_ReverseProxy/releases). Place alongside folder ```nginx_secrets``` (not inside)
* Start container with ```docker-compose up -d```
