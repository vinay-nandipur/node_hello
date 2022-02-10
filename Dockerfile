FROM node:lts-alpine3.15
WORKDIR /app
COPY package.json /app
RUN npm ci --only=production && npm cache clean --force
COPY . /app
CMD node index.js
EXPOSE 8081
