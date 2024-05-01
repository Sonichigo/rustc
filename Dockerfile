FROM node:lts

# Set the working directory
WORKDIR /app

COPY package*.json ./

RUN npm install

# Copy the contents of the current directory into the build container
COPY . /app

RUN ls

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh", "/app/index.js"]
