**Container is now based on node:10-alpine instead of the full version, changing the size from 960MB to 96MB.**

Publish a webserver to control the new Ziggo Mediabox Next

**Environment Variables** <br>
USERNAME = Ziggo username <br>
PASSWORD = Ziggo password

Port 8080

Credits go to https://github.com/basst85/NextRemoteJs

Example:
docker run -d -e USERNAME=lolgast@live.nl -e PASSWORD=Z!ggoP@ssword -p 8080:8080 lolgast/nextremote
