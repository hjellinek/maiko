FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y libx11-dev
RUN pwd
RUN ls -l

RUN mkdir /maiko
ADD /build/{lde*,mkvdate,setsout,tstsout} /maiko

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

