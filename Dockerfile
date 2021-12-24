FROM rocker/tidyverse:latest

RUN apt-get update && apt-get install -y \
  openssh-client \
  libssh-dev
  
### R Packages ###  
RUN install2.r --error --skipinstalled --ncpus -1 \
    here \
    tidymodels
    
### Bioconductor Packages ###     
RUN R -e "BiocManager::install('ensembldb')"
RUN R -e 'BiocManager::install("liftOver")'

RUN rm -rf /tmp/downloaded_packages
  
LABEL org.opencontainers.image.source=https://github.com/mglev1n/rocker-tidyverse-ssh
