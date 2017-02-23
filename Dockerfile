FROM ubuntu:latest
MAINTAINER Markus Graube <markus.graube@tu-dresden.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy texlive-full 
RUN apt-get install -qy biber

WORKDIR /data
VOLUME ["/data"]
