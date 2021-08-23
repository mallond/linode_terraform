FROM ubuntu

RUN apt update
RUN apt install snapd -y
RUN systemctl unmask snapd.service
RUN systemctl enable snapd.service
RUN systemctl start snapd.service
RUN snap install microk8s --classic --channel=1.21/stable
RUN microk8s status --wait-ready

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
