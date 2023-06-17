FROM ghcr.io/muxueqz/twrp-docker-build:sha256-357b9afe199988e8d362730e69149a28099ae3c42c3da08c046d8724e0dfeb24.sig
MAINTAINER ElXreno <elxreno@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ENV REPO https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni
RUN \
  repo sync
VOLUME /build
