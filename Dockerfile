ARG EXES

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN echo EXES = $EXES

WORKDIR /maiko
COPY $EXES/lde /maiko/
COPY $EXES/ldether /maiko/
COPY $EXES/ldex /maiko/
COPY $EXES/mkvdate /maiko/
COPY $EXES/setsout /maiko/
COPY $EXES/tstsout /maiko/

RUN cd "$EXES"; pwd; ls -l


RUN apt-get update && apt-get install -y libx11-dev

FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

