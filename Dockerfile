FROM node:18.14-alpine3.16

WORKDIR /user/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${PORT}

CMD [ "npm", "run", "start:dev" ]
