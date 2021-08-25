#!/bin/bash
snap install dotnet-sdk --classic --channel=5.0
snap alias dotnet-sdk.dotnet dotnet
sed -i "$ a export PATH=$PATH:/snap/bin" .profile
