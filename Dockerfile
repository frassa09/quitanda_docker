FROM node:20-alpine as FRONTEND

WORKDIR /app

COPY ./package*.json ./

RUN npm ci

COPY ./ ./

EXPOSE 5173

CMD [ "npm", "run", "dev" ]

FROM node:20-alpine as BACKEND

WORKDIR /server

COPY ./package*.json ./

RUN npm ci

COPY ./ ./


EXPOSE 3000

CMD [ "npm", "run", "start" ]