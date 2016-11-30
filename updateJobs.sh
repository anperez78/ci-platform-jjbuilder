#!/bin/sh
docker run --interactive --tty --rm \
    --volume "$PWD":/opt/jenkins-job \
    --workdir /opt/jenkins-job \
    ci-platform-jjbuilder \
    jenkins-jobs --conf jenkins_jobs.ini update ./jobs
