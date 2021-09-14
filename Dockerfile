FROM node:12-slim

# Create app directory
WORKDIR /app

# Copy packege.json file
COPY package*.json ./

RUN npm install

# Copy other files
COPY . .

EXPOSE 4001
CMD [ "npm", "start" ]
