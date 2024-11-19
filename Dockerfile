FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production

COPY app.js ./

CMD ["npm", "start"]