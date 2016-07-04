# Run windows programs like a champion
FROM kalledk/docker-wine
MAINTAINER Arpit Nagar <arpitgold@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget git

# install mono
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mono-complete

# install nuget
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nuget


# Installing Mono
# RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
# RUN echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list
# RUN apt-get update && apt-get install -yf mono-complete nuget
