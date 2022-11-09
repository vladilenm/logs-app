FROM node

WORKDIR /app

COPY . .

RUN apt install npm && npm install

EXPOSE 3000

CMD [ "node", "app.js" ]

