FROM node:10.5.0-slim

RUN npm install

COPY . /app

WORKDIR /app

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.yaml"]