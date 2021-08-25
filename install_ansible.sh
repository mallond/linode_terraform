#!/bin/bash
apt-get install software-properties-common
apt-get add-apt-repository --yes --update ppa:ansible/ansible
apt-get apt install ansible -y
