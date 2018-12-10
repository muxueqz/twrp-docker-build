FROM openjdk:7-slim
MAINTAINER ElXreno <elxreno@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends axel sudo bc bison g++-multilib git make lzop python zip

RUN apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip maven schedtool

RUN mkdir /root/bin && PATH=/root/bin:$PATH && echo 'PATH=/root/bin:$PATH' >> /root/.bashrc && curl https://storage.googleapis.com/git-repo-downloads/repo > /root/bin/repo && chmod a+x /root/bin/repo

VOLUME /root/omni
