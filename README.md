Publish a webserver to control the new Ziggo Mediabox Next

**Environment Variables** <br>
USERNAME = Ziggo username <br>
PASSWORD = Ziggo password

Port 8080

Credits go to https://github.com/basst85/NextRemoteJs

Example:
docker run -d -e USERNAME=lolgast@live.nl -e PASSWORD=Z!ggoP@ssword -p 8080:8080 lolgast/nextremote
