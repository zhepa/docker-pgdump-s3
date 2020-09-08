FROM postgres:13

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && npm install

CMD ["node", "index.js"]
