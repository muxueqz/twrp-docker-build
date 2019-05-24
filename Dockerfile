FROM openjdk:8-slim
MAINTAINER ElXreno <elxreno@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update \
    && apt-get install -y --no-install-recommends \
    git \
    git-core \
    make \
    lzop \
    python \
    zip \
    gnupg \
    flex \
    gperf \
    build-essential \
    curl \
    bc \
    bison \
    g++-multilib \
    zlib1g-dev \
    gcc-multilib \
    libc6-dev-i386 \
    lib32ncurses5-dev \
    x11proto-core-dev \
    libx11-dev \
    lib32z-dev \
    ccache \
    libgl1-mesa-dev \
    libxml2-utils \
    xsltproc \
    unzip \
    maven \
    schedtool \
    rsync \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo && chmod a+x /bin/repo

VOLUME /root/omni
