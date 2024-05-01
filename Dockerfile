FROM node:lts

WORKDIR /github/workspace

COPY package*.json ./

RUN npm install

COPY . . 

RUN ["chmod", "+x", "index.js"]

RUN ls

CMD ["node", "index.js"]
