#!/bin/bash
snap install dotnet-sdk --classic --channel=5.0
snap alias dotnet-sdk.dotnet dotnet
export DOTNET_ROOT=/snap/dotnet-sdk/current
