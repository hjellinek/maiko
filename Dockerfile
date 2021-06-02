FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y build-essential clang libx11-devRUN pwd
RUN ls -l

COPY maiko /build/
WORKDIR /build/bin
RUN rm -rf /build/linux*
RUN ./makeright x


FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

