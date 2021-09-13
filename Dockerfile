FROM node:12-slim

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4001
CMD [ "npm", "start" ]
