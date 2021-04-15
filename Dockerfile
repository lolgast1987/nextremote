## Builder
FROM node:10-alpine AS build

WORKDIR /opt

RUN apk add --no-cache --no-progress git \
	&& git clone https://github.com/basst85/NextRemoteJs.git ./nextremote \
	&& sed -i 's/config.ziggoUsername/process.env.USERNAME/g' ./nextremote/index.js \
	&& sed -i 's/config.ziggoPassword/process.env.PASSWORD/g' ./nextremote/index.js \
	&& sed -i 's/id="stationsList"/& style="background: grey;"/g' ./nextremote/index.html

WORKDIR /opt/nextremote

RUN npm install
## 

FROM node:10-alpine
COPY --from=build /opt/nextremote /opt/nextremote
WORKDIR /opt/nextremote
EXPOSE 8080
CMD ["npm", "start"]
