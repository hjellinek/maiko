FROM ubuntu:focal

COPY lde /maiko/
COPY ldeether /maiko/
COPY ldex /maiko/
COPY mkvdate /maiko/
COPY setsout /maiko/
COPY tstsout /maiko/

RUN echo BEFORE; pwd; ls -l

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y libx11-dev

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN echo AFTER;  pwd; ls -l
