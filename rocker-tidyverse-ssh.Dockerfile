FROM rocker/tidyverse:4.1.2

RUN apt-get update && apt-get install -y \
  openssh-client \
  libssh-dev
