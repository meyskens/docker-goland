FROM ubuntu:bionic

RUN apt-get update && apt-get install -y git wget tar fish libfontconfig1 libxrender1 libxext6 libxtst6 libxi6

ENV version 2020.1

RUN wget https://download.jetbrains.com/go/goland-${version}.tar.gz &&\
    tar -xzf goland-${version}.tar.gz && rm -f goland-${version}.tar.gz


CMD GoLand-${version}/bin/goland.sh
