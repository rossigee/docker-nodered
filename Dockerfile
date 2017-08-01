FROM node

RUN npm install -g --unsafe-perm \
	node-red \
	node-red-admin

EXPOSE 1880

CMD ["/usr/local/bin/node-red"]

