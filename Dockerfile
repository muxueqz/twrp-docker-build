FROM ubuntu:18.04
MAINTAINER ElXreno <elxreno@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update \
    && apt-get install -y --no-install-recommends \
    bc \
    bison \
    build-essential \
    ccache \
    curl \
    flex \
    gcc-multilib \
    git \
    g++-multilib \
    gnupg \
    gperf \
    lib32ncurses5-dev \
    lib32z-dev \
    libc6-dev-i386 \
    libgl1-mesa-dev \
    libx11-dev \
    libxml2-utils \
    lzop \
    make \
    maven \
    openjdk-8-jdk \
    python3 \
    python \
    rsync \
    schedtool \
    unzip \
    x11proto-core-dev \
    xsltproc \
    zip \
    zlib1g-dev \
    && apt-get purge openjdk-11-jre-headless -y \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo && chmod a+x /bin/repo

ENV REPO https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni
RUN cd /repo \
  && repo init -u ${REPO} -b twrp-9.0 \
  && repo sync
VOLUME /build
