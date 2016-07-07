FROM ubuntu:16.04

ENV SHELL /bin/bash
RUN apt-get update && apt-get install -y curl zip unzip vim python

RUN cd /tmp/ && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
unzip awscli-bundle.zip && \
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \

mkdir /root/.aws
COPY index.html /root/

WORKDIR /root

CMD aws s3 cp index.html s3://cf-s3-docker-test/index.html
