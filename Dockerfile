FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
    procps \
    samtools \
    openjdk-17-jdk

RUN mkdir /usr/src/t2t-polish
COPY . /usr/src/t2t-polish

ENV T2T_POLISH=/usr/src/t2t-polish
