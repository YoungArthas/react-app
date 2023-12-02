FROM node:latest

WORKDIR /app

COPY src .

RUN npm i && npm run build
RUN npm i -g serve

CMD ["serve","-s","build"]