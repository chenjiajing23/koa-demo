FROM node:10.5.0-slim

COPY . /app

WORKDIR /app

RUN npm install \
  && npm install -g pm2

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.yaml"]