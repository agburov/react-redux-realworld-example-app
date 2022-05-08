FROM alpine
RUN apk add --update nodejs npm
RUN apk add git
RUN adduser test -D -h /opt/
USER test
WORKDIR /opt/
RUN git clone https://github.com/agburov/react-redux-realworld-example-app.git
WORKDIR /opt/react-redux-realworld-example-app
RUN npm install