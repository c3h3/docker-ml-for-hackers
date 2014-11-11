FROM rocker/rstudio

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN mkdir demo
RUN cd /demo && GIT_SSL_NO_VERIFY=true git clone https://github.com/johnmyleswhite/ML_for_Hackers.git
RUN cd /demo/ML_for_Hackers && Rscript package_installer.R


