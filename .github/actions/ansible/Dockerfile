FROM ubuntu

RUN apt update
RUN apt install snapd -y
RUN sudo snap install microk8s --classic --channel=1.21/stable
RUN microk8s status --wait-ready

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
