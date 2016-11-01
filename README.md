# Docker isc dhcp server

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/ymajik/docker-isc-dhcp/builds/)  

docker container from Debian Jessie to run a isc dhcp server. Dhcp configs have to be made and put in the right directory.

## Build container
```
docker build -t ymajik/isc-dhcp-server .
```

## Start the container with the following command:
```
docker run -it -v $(pwd):/etc/dhcp --name isc-dhcp-server ymajik/isc-dhcp-server
```
