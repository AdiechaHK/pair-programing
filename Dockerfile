FROM node:10

RUN mkdir app
RUN mkdir program

COPY package.json app/
COPY program/ /app/program/

RUN cd app
WORKDIR app
RUN yarn
RUN pwd
RUN yarn theia build

RUN apt update

EXPOSE 3000

CMD ["yarn", "theia", "start", ".", "--hostname", "0.0.0.0"]