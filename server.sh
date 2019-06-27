#!/bin/bash

# 安装服务

setAptGetSourse() {
    cat >/etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
EOF
}

installDocker() {
    apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common

    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

    apt-get update

    apt-get install docker-ce docker-ce-cli containerd.io

    docker --version
}

installDockerCompose() {
    curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose

    docker-compose --version
}

setDockerSource() {
    cat >/etc/docker/daemon.json <<EOF
{
  "experimental" : true,
  "registry-mirrors" : [
    "https://45599kaw.mirror.aliyuncs.com"
  ]
}
EOF
    docker restart
}

# 修改apt-get源
setAptGetSourse

# 更新apt-get包
apt-get update

# 安装Docker
installDocker

# 安装Docker-compose
installDockerCompose

# 设置docker源
setDockerSource
