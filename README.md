# FE2_ReverseProxy
Nginx Reverse Proxy to run dockerized on a RaspberryPi in front of [Alamos FE2](https://www.alamos-gmbh.com/service/fe2/) providing proper SSL certificates from Let's encrypt.

## Acknowledgments and Thanks
The solution is based on the following project: [JonasAlfredsson/docker-nginx-certbot](https://github.com/JonasAlfredsson/docker-nginx-certbot)  

## How it works
This repository builds a docker container on DockerHub (private registry):
* Based on specific version of ```docker-nginx-certbot```
* Added our specific nginx configurations split by subdomain:
  *  Reverse Proxy for FE2
  *  Routes for [FE2_Kartengenerierung](https://github.com/FFW-Baudenbach/FE2_Kartengenerierung)  
     * Route to static Icons (grabbed by Google Static Maps API)
     * Also the static Icons itself are added to the container
     * Route to generated Maps (to be used in static mail image links)
  *  Routes for [FE2_Monitoring](https://github.com/FFW-Baudenbach/FE2_Monitoring)
      * Route to health endpoint to be checked from external counterpart
      * Route to dashboard to make it available externally
  *  ~~Route for [FE2_Calendar](https://github.com/FFW-Baudenbach/FE2_Calendar)~~
  *  Route for [FE2_Documentation](https://github.com/FFW-Baudenbach/FE2_Documentation)
* Added default environment variables

## How to use
### First time setup
* Create directory to store persistent data: ```mkdir nginx_secrets```
* Login to DockerHub: ```docker login -u odin568 -p *******```
### Starting/Updating container
* Download latest [docker-compose.yml](https://github.com/odin568/FE2_ReverseProxy/releases). Place alongside folder ```nginx_secrets``` (not inside)
* Start container with ```docker-compose up -d```
* Potentially need to adjust paths inside
