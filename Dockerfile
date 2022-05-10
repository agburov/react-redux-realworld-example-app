FROM node:lts-alpine
WORKDIR /opt/app/
ENV PORT=80
COPY ./ ./
RUN apk add --update nodejs npm \
&& adduser test -D -h /opt \
&& chown -R test:test /opt/app \
&& chmod 755 /opt/app
USER test
RUN npm install
CMD npm start