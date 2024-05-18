FROM node:20

COPY package.json ./

RUN npm install

RUN ls

CMD ["node","index.js"]
