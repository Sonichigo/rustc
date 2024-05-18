FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

RUN ls

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh", "/app/index.js"]
