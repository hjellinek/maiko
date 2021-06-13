FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN pwd
RUN ls -l

RUN mkdir /maiko
COPY build/{lde*,mkvdate,setsout,tstsout} /maiko/

RUN apt-get update && apt-get install -y libx11-dev

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

