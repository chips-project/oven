FROM ubuntu:latest
LABEL maintainer "Ahmad Thoriq Najahi <najahiii@outlook.co.id>"

# Indonesian timezone (GMT+7)	
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
	autoconf \
	autogen \
	automake \
	autotools-dev \
	bc \
	binutils \
	binutils-aarch64-linux-gnu \
	binutils-arm-linux-gnueabi \
	bison \
	bzip2 \
	ca-certificates \
	cmake \
	curl \
	expect \
	flex \
	g++ \
	gawk \
	gcc \
	git \
	gnupg \
	gperf \
	help2man \
	libc6-dev \
	libelf-dev \
	libgomp1-* \
	liblz4-tool \
	libncurses5-dev \
	libssl-dev \
	libstdc++6 \
	libtool \
	libtool-bin \
	m4 \
	make \
	openssl \
	ovmf \
	patch \
	pigz \
	python3 \
	python \
	rsync \
	shtool \
	subversion \
	tar \
	texinfo \
	tzdata \
	u-boot-tools \
	unzip \
	wget \
	xz-utils \
	zip \
	zlib1g-dev \
	zstd

# Git
RUN git config --global user.email "najahiii@outlook.co.id"
RUN git config --global user.name "Ahmad Thoriq Najahi"

# Clang
RUN git clone https://github.com/ChipsKernelBot/clang.git /root/clang

# GCC
RUN git clone https://github.com/najahiiii/priv-toolchains.git -b elf/gcc-10.0.0/arm --depth=1 /root/toolchain/ARM
RUN git clone https://github.com/najahiiii/priv-toolchains.git -b elf/gcc-10.0.0/arm64 --depth=1 /root/toolchain/ARM64
