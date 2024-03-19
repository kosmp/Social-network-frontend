FROM node:20-alpine AS build

WORKDIR /usr/local/app

COPY package.json package-lock.json ./
RUN npm install
COPY . .

CMD ["npm", "start"]