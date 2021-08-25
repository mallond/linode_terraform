#!/bin/bash
ufw --force enable
ufw allow 9090
ufw allow 8080
sed -i "$ a export PATH=$PATH:/snap/bin" /root/.profile
