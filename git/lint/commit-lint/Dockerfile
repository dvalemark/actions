FROM node:alpine

RUN apk --no-cache add \
    git=2.22.2-r0 \
    bash=5.0.0-r0

WORKDIR /work
COPY files/work/package.json /work/package.json

RUN yarn install

COPY files/ /

RUN chmod +x /work/entrypoint.sh

ENTRYPOINT ["/work/entrypoint.sh"]
