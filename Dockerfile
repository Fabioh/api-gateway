FROM node:10-alpine
ENV NODE_ENV production
WORKDIR /app
COPY ["package.json", "package.json"]
COPY ["package-lock.json", "package-lock.json"]
RUN npm install --production && npm install -g express-gateway
COPY . .
EXPOSE 8080
# CMD node server.js
CMD [ "npm", "run", "start" ]