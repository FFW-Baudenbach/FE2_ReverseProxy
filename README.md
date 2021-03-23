# FE2_ReverseProxy
Nginx Reverse Proxy to run dockerized on a RaspberryPi in front of Alamos FE2 providing proper SSL certificates from Let's encrypt.

## Acknowledgments and Thanks
The solution is based on the following project: [JonasAlfredsson/docker-nginx-certbot](https://github.com/JonasAlfredsson/docker-nginx-certbot)  

## How it works
This repository builds a docker container on DockerHub (private registry):
* Based on specific version of ```docker-nginx-certbot```
* Added our specific nginx configuration
* Added required mail address for certbot
This container can then be easily used in our context with the provided ```docker-compose.yml``` file.

## How to use
### First time setup
* Create directory to store persistent data: ```mkdir nginx_secrets```
* Login to DockerHub: ```docker login -u odin568 -p *******```
### Starting/Updating container
* Download latest [docker-compose.yml](https://github.com/odin568/FE2_ReverseProxy/releases). Place alongside folder ```nginx_secrets``` (not inside)
* Start container with ```docker-compose up -d```
