FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y build-essential clang libx11-dev
COPY maiko /build/
WORKDIR /build/bin
RUN rm -rf /build/linux*
RUN ./makeright x


FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

