#!/bin/bash
apt-get update
snap install microk8s --classic --channel=1.21/stable
microk8s status --wait-ready
microk8s enable dashboard dns registry helm ingress prometheus grafana 
snap alias microk8s.kubectl kubectl    
usermod -a -G microk8s root
chown -f -R root ~/.kube
 
