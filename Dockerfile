FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y libx11
RUN pwd
RUN ls -l

RUN mkdir /maiko
COPY lde ldether ldex mkvdate setsout tstsout /maiko

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

