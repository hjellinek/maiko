FROM ubuntu:focal

ARG exes

RUN echo "HERE exes = $exes"

WORKDIR /maiko
COPY $exes/lde /maiko/
COPY $exes/ldether /maiko/
COPY $exes/ldex /maiko/
COPY $exes/mkvdate /maiko/
COPY $exes/setsout /maiko/
COPY $exes/tstsout /maiko/

RUN cd "$exes"; pwd; ls -l

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y libx11-dev

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

