FROM amazonlinux:latest
MAINTAINER dkzkb

# https://www.python.org/ftp/python/
ARG python_majar_version='3'
ARG python_minor_version='6'
ARG python_batch_version='5'
ARG python_version=${python_majar_version}'.'${python_minor_version}'.'${python_batch_version}

RUN yum install -y wget \
                   tar \
                   gzip \
                   zlib-devel \
                   make \
                   gcc \
                   openssl-devel \
                   zip

RUN mkdir ~/src
WORKDIR ~/src
RUN wget https://www.python.org/ftp/python/${python_version}/Python-${python_version}.tgz
RUN tar zxvf Python-${python_version}.tgz && \
    cd Python-${python_version} && \
    ./configure && \
    make && \
    make install

RUN ln -s /usr/local/bin/python${python_majar_version} /usr/local/bin/python
RUN ln -s /usr/local/bin/pip${python_majar_version} /usr/local/bin/pip

WORKDIR /share

