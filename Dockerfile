FROM alpine:latest
RUN apk update && apk add curl

ENTRYPOINT ["tail","-f","/dev/null"]