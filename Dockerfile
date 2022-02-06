ARG BASE_CONTAINER=jupyter/tensorflow-notebook
FROM $BASE_CONTAINER

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    mecab \
    libmecab-dev \
    mecab-ipadic-utf8 \
    git \
    make \
    curl \
    xz-utils \
    file \
    wget \
    patch \
    bash \
    swig \
    gfortran \
    g++

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
    cd mecab-ipadic-neologd && \
    bin/install-mecab-ipadic-neologd -n -y && \
    cd .. && \
    rm -r mecab-ipadic-neologd

RUN apt-get install -y fonts-migmix

USER ${NB_UID}

RUN pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install \
    autopep8 \
    gensim \
    mecab-python3 \
    unidic-lite

WORKDIR "${HOME}"
