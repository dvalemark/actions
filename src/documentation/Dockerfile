FROM node:alpine

WORKDIR /src

COPY files/src/package*.json /src/

RUN yarn install

COPY files/ /

ENTRYPOINT ["yarn"]

CMD ["run", "build"]
