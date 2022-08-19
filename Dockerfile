FROM node

WORKDIR /usr/.....

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
