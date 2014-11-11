FROM rocker/rstudio

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN cd /tmp && GIT_SSL_NO_VERIFY=true git clone https://github.com/johnmyleswhite/ML_for_Hackers.git
RUN cd /tmp/ML_for_Hackers && Rscript package_installer.R
RUN cd /tmp && rm -rf ML_for_Hackers

ADD install.R /tmp/install.R

