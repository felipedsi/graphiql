FROM node:12-alpine3.10

ENV LANG C.UTF-8

RUN mkdir /app
WORKDIR /app

COPY . .

RUN yarn
RUN yarn run build

EXPOSE 8080

CMD ["yarn", "run", "start-graphiql"]
