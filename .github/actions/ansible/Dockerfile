FROM ubuntu:20.04

RUN apt update
RUN apt install snapd -y
RUN snap download microk8s
RUN snap ack microk8s_2346.assert
RUN sudo snap install microk8s_2346.snap --classic
RUN microk8s status --wait-ready

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
