FROM node:lts-alpine3.15
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
WORKDIR /app
COPY package.json /app
RUN npm install --only=production && npm cache clean --force
COPY . /app
CMD node index.js
EXPOSE 8081
