FROM bookapi-dependencies

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
COPY knexfile.js .
COPY migrations migrations
COPY api api

RUN npm install

EXPOSE 3000
CMD [ "node", "api/index.js" ]
