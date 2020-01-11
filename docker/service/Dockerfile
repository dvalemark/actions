FROM alpine:3

RUN apk add --no-cache bash=5.0.11-r1 make=4.2.1-r2

COPY files/ /

RUN chmod +x /work/entrypoint.sh

ENTRYPOINT ["/work/entrypoint.sh"]
