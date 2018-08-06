FROM node:10
COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install -g gatsby-cli
RUN npm install

RUN /usr/local/bin/gatsby build --prefix-paths

EXPOSE 9000
CMD ["gatsby", "serve"]
