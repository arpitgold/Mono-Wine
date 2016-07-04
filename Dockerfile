# Run windows programs like a champion
FROM ubuntu:16.04
MAINTAINER Arpit Nagar <arpitgold@gmail.com>

# Installing Mono
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
RUN echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get update && apt-get install -yf mono-complete mono-devel nuget ca-certificates-mono fsharp

RUN add-apt-repository ppa:ubuntu-wine/ppa
RUN apt-get update
RUN apt-get install wine1.8 winetricks
RUN dpkg --add-architecture i386
RUN add-apt-repository ppa:wine/wine-builds
RUN apt-get update
RUN apt-get install --install-recommends winehq-devel
