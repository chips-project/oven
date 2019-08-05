FROM debian:buster
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y bison build-essential bc bison curl libssl-dev git zip wget tar zstd
