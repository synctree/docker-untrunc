FROM ubuntu:12.04
MAINTAINER Masahji Stewart

# Tell debconf to run in non-interactive mode
ENV DEBIAN_FRONTEND noninteractive

# Make sure the repository information is up to date
RUN apt-get update
RUN apt-get install -y g++
RUN apt-get install -y libavformat-dev libavcodec-dev libavutil-dev wget
RUN apt-get install -fy

RUN apt-get install -y unzip

RUN mkdir /src
WORKDIR /src
RUN wget --no-check-certificate https://github.com/ponchio/untrunc/archive/master.zip
RUN unzip master.zip

WORKDIR /src/untrunc-master
RUN g++ -o untrunc file.cpp main.cpp track.cpp atom.cpp mp4.cpp -L/usr/local/lib -lavformat -lavcodec -lavutil
RUN mv untrunc /usr/bin/

ENTRYPOINT ["untrunc"]
