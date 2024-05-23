FROM node:22-alpine

WORKDIR /app

COPY package*.json /app/
RUN npm install -y

COPY . /app

RUN ls

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh", "/app/index.js"]