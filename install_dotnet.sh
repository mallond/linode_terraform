#!/bin/bash
wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u4_amd64.deb
apt update
dpkg -i libicu57_57.1-6+deb9u4_amd64.deb
apt install dotnet-sdk-3.1 -y
