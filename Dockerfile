FROM ubuntu:20.04
MAINTAINER shenjiahuan "shenjiahuan@sjtu.edu.cn"

RUN apt update && \
    apt-get install -y git --no-install-recommends --no-install-suggests build-essential gdb fuse libfuse-dev sudo psmisc

COPY mypasswd /tmp

RUN useradd --no-log-init -r -m -g sudo stu

RUN cat /tmp/mypasswd | chpasswd

USER stu

WORKDIR /home/stu/
