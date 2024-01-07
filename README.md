This is the first time I ever build a docker image and published something on github. This is merely for testing and for my own purpose.

This said for the people who dare to try this software 

This docker-ubooquity is build on the latest beta which is currently v3. 
As I learn more about all this things might get updated.

A docker-compose file example is uploaded. Please make sure to adjust accordingly.


Example below :


```
version: '3.8'

services:
  ubooquity:
    image: dimadh/docker-ubooquity:v3.0
    container_name: ubooquity
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - MAXMEM=
    ports:
      - "2202:2202" #Webui
      - "2203:2203" #Admin Port
    volumes:
      - /path/to/data:/config
      - /path/to/books:/books
      - /path/to/comics:/comics
      - /path/to/raw/files:/files
    restart: unless-stopped

```


If u want to try and run without docker-compose I suppose it works like this : 



```
docker run -d \
  --name ubooquity \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e MAXMEM= \
  -p 2202:2202 \
  -p 2203:2203 \
  -v /path/to/data:/config \
  -v /path/to/books:/books \
  -v /path/to/comics:/comics \
  -v /path/to/raw/files:/files \
  --restart unless-stopped \
  dimadh/docker-ubooquity:v3.0

```
