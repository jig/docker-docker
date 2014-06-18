FROM jordi/ubuntu

RUN apt-get -y update
# RUN apt-get -y install linux-image-extra-`uname -r`
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
RUN sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
RUN apt-get -y update
RUN apt-get -y install lxc-docker
# RUN docker info
