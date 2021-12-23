FROM rocker/tidyverse:latest

RUN apt-get update && apt-get install -y \
  openssh-client \
  libssh-dev
