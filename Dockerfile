FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y -f nodejs-legacy npm git && \
	apt-get clean

RUN npm install -g --unsafe-perm \
	node-red \
	node-red-admin

EXPOSE 1880

CMD ["/usr/local/bin/node-red"]

