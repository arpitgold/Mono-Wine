# Run windows programs like a champion
FROM ubuntu:16.04
MAINTAINER Arpit Nagar <arpitgold@gmail.com>

RUN apt-get update
RUN apt-get install mono-complete nuget

RUN add-apt-repository ppa:wine/wine-builds
RUN apt-get update
RUN apt-get install --install-recommends wine-staging
