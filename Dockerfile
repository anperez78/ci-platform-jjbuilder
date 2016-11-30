FROM alpine:3.3
MAINTAINER Antonio Perez

ENV VERSION 1.6.1

RUN apk add --no-cache python
RUN apk add --no-cache py-pip
RUN apk add --no-cache git
RUN pip install jenkins-job-builder==${VERSION}
RUN git clone https://github.com/rusty-dev/jenkins-job-builder-pipeline.git && \
    cd jenkins-job-builder-pipeline && \
    git checkout tags/stable && \
    python setup.py install
