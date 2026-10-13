FROM node:25-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000
ENV PORT=3000
ENV HOST=0.0.0.0

RUN npm run build

CMD [ "npm", "run", "start" ]