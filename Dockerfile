FROM --platform=linux/amd64 ubuntu:16.04
COPY . /root/
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential libopencv-dev libcurl4-openssl-dev uuid-dev git wget curl git zip screen fuse
RUN curl https://rclone.org/install.sh | sudo bash
RUN mkdir -p /mnt/share
RUN bash /root/install_boost.sh
RUN bash /root/install_cmake.sh
RUN bash /root/install_sdk.sh
CMD bash
