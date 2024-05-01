FROM node:lts

COPY package*.json ./

RUN npm install

RUN npm build

RUN ls

CMD ["node", "index.js"]
