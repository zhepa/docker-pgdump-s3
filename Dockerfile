FROM postgres:13

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN apt update && apt install -y curl && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt install -y nodejs && npm ci

CMD ["node", "index.js"]
