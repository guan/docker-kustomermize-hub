FROM ubuntu:20.04


RUN apt update && \
  apt install -y  \
  wget \
  curl \
  gnupg \
  gnupg2 \
  gnupg1 \ 
  software-properties-common

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
RUN apt-add-repository https://cli.github.com/packages
RUN apt install -y gh

# RUN wget https://github.com/github/hub/releases/download/v2.14.2/hub-linux-amd64-2.14.2.tgz \
#  && tar zxvf hub-linux-amd64-2.14.2.tgz \
#  && mv hub-linux-amd64-2.14.2/bin/hub /usr/bin

# RUN hub --version

RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
RUN mv kustomize /bin