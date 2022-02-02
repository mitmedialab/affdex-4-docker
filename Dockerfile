FROM --platform=linux/amd64 ubuntu:16.04
COPY . /root/
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential libopencv-dev libcurl4-openssl-dev uuid-dev git wget curl
RUN bash /root/install_boost.sh
RUN bash /root/install_cmake.sh
RUN bash /root/install_sdk.sh