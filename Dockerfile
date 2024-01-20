FROM node:latest

WORKDIR /app

COPY . .

RUN wget https://github.com/ihciah/telearia2/releases/download/v0.1.4/telearia2-x86_64-unknown-linux-musl -O telearia2 &&\
    chmod +x config.sh entrypoint.sh && sh config.sh

ENTRYPOINT [ "yarn", "start" ]