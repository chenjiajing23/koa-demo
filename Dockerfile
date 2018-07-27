FROM node:10.5.0-slim

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

RUN npm install -g pm2

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.yaml"]

# http://bitjudo.com/blog/2014/03/13/building-efficient-dockerfiles-node-dot-js/