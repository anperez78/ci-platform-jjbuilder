FROM alpine:3.3
MAINTAINER Antonio Perez

ENV VERSION 1.6.1

RUN apk add --no-cache python
RUN apk add --no-cache py-pip
RUN pip install jenkins-job-builder==${VERSION}
