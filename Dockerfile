FROM node

RUN mkdir -p /usr/app

COPY package*.json /usr/app/
COPY app /usr/app/

WORKDIR /usr/app

EXPOSE 5000

RUN npm install
CMD ["node", "server.js"]
