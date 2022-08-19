FROM node

WORKDIR /opt/app

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
