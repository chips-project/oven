FROM debian:latest
LABEL maintainer "Ahmad Thoriq Najahi <najahiii@outlook.co.id>"

RUN apt-get update && apt-get install -y \
	gcc \
	libc6-dev \
	git \
	g++ \
	gperf \
	bison \
	flex \
	texinfo \
	help2man \
	make \
	libncurses5-dev \
	autoconf \
	automake \
	libtool \
	libtool-bin \
	gawk \
	wget \
	bzip2 \
	xz-utils \
	unzip \
	patch \
	python3 \
	libstdc++6 \
	subversion \
	curl \
	rsync \
	bc \
	libssl-dev \
	zip \
	tar \
	zstd \
	libgomp1-* \
	cmake \
	autogen \
	autotools-dev \
	shtool \
	python \
	m4 \
	zlib1g-dev
	
RUN apt-get upgrade -y
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
