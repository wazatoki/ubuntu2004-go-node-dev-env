# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.155.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"

ARG user=unknown
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    docker.io \
    libappindicator1 libappindicator3-1 fonts-liberation \
    libasound2 libdrm2 libgbm1 libnspr4 libnss3 xdg-utils \
    libxshmfence1 openssh-client socat

WORKDIR /tmp

ARG GO_VERSION="1.16"
RUN curl -fsSOL https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz

ARG NODE_VERSION="v15.9.0"
RUN curl -fsSOL https://nodejs.org/download/release/${NODE_VERSION}/node-${NODE_VERSION}-linux-x64.tar.gz \
    && tar -C /usr/local -xzf node-${NODE_VERSION}-linux-x64.tar.gz

RUN curl -fsSOL https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb

ENV PATH=$PATH:/usr/local/go/bin:/usr/local/node-${NODE_VERSION}-linux-x64/bin

