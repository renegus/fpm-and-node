FROM fedora:27
MAINTAINER Rene Gustafson <renegustafson@gmail.com>
RUN dnf clean metadata \
 && dnf -y update \
 && dnf -y install \
    @"Development Tools" \
    gnupg \
    libffi \
    libffi-devel \
    rpm-build \
    rpm-sign \
    rsync \
    ruby \
    ruby-devel \
    rubygems \
    nodejs \
    python \
    which \
 && dnf clean all
RUN curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
RUN gem install --no-ri --no-rdoc fpm -v 1.9.3
