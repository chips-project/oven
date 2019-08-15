FROM debian:latest
LABEL maintainer "Ahmad Thoriq Najahi <najahiii@outlook.co.id>"

RUN apt-get update && apt-get install -y \
	gcc \
	libc6-dev \
	git \
	gcc \
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
	bc \
	libssl-dev \
	zip \
	tar \
	zstd \
	libgomp1-* \
	cmake \
	autogen \
	autoconf \
	autotools-dev \
	shtool \
	python \
	m4 \
	zlib1g-dev
