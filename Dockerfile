FROM rocker/tidyverse:latest

RUN apt-get update && apt-get install -y \
  openssh-client \
  libssh-dev
  
LABEL org.opencontainers.image.source=https://github.com/mglev1n/rocker-tidyverse-ssh
