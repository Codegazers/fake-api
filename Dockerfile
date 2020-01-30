FROM node:alpine
ENV APPDIR /APP
WORKDIR ${APPDIR}
COPY . .
RUN apk add --no-cache --update curl \
&& rm -rf /var/cache/apk \
&& npm install -g json-server
CMD ["json-server","--watch","db.json","--host","0.0.0.0"]
EXPOSE 3000
