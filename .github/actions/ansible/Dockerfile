FROM ubuntu:20.04

RUN apt update
RUN apt install snapd
RUN snap install microk8s --classic --channel=1.21/stable
RUN microk8s status --wait-ready

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
