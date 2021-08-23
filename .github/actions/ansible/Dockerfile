FROM ubuntu:20.04

RUN apt update
RUN apt install snapd -y
RUN snap download microk8s
RUN export PATH="$PATH:/snap/bin"
RUN microk8s status --wait-ready

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
