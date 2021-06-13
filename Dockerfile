FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /maiko
COPY build/{lde*,mkvdate,setsout,tstsout} /maiko/

RUN pwd
RUN ls -l

RUN apt-get update && apt-get install -y libx11-dev

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

