FROM python:3-alpine

WORKDIR /app

RUN apk add --update -t --no-cache git curl alpine-sdk

RUN ["pip", "install", "-U", "commitizen"]

CMD [ "cz", "version" ]