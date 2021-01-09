FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

COPY . .

RUN npm run build:ssr

CMD ["npm", "run", "serve:ssr"]