FROM ruby:2.6.1-alpine

RUN apk update && \
  apk upgrade && \
  apk add --no-cache \
  bash \
  curl \
  curl-dev \
  git \
  build-base \
  file \
  gzip \
  libc6-compat \
  ncurses \
  sudo  


RUN wget https://github.com/github/hub/releases/download/v2.14.2/hub-linux-amd64-2.14.2.tgz \
  && tar zxvf hub-linux-amd64-2.14.2.tgz \
  && mv hub-linux-amd64-2.14.2/bin/hub /usr/bin

RUN hub --version

RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
RUN mv kustomize /bin