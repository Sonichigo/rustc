FROM node:22-alpine

COPY . .
RUN npm install -y

RUN ls

RUN chmod +x entrypoint.sh

ENTRYPOINT ["entrypoint.sh", "index.js"]