FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN pwd
RUN ls -l

WORKDIR /maiko
COPY /maiko/maiko/build/lde /maiko/
COPY /maiko/build/lde /maiko/
COPY /build/lde /maiko/
COPY /lde /maiko/
COPY lde /maiko/
COPY /home/runner/work/maiko/maiko/build/ldether /maiko/
COPY maiko/build/ldex /maiko/
COPY maiko/build/mkvdate /maiko/
COPY maiko/build/setsout /maiko/
COPY maiko/build/tstsout /maiko/

RUN apt-get update && apt-get install -y libx11-dev

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

