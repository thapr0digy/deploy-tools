#!/bin/bash

# We'll be assuming we're on a Debian/Ubuntu install for any apt-get commands
# Otherwise we'll build from source if possible for things like amass

TOOLS_DIR="~/tools"
echo "Installing all tools..."

# Project Discovery tools
GO111MODULE=on go get -v -u github.com/projectdiscovery/subfinder/v2/cmd/subfinder
GO111MODULE=on go get -v -u github.com/projectdiscovery/httpx/cmd/httpx
GO111MODULE=on go get -v -u github.com/projectdiscovery/nuclei/v2/cmd/nuclei
nuclei -update-templates
GO111MODULE=on go get -v -u github.com/projectdiscovery/naabu/v2/cmd/naabu
GO111MODULE=on go get -v -u github.com/projectdiscovery/dnsx/cmd/dnsx
GO111MODULE=on go get -v -u github.com/projectdiscovery/proxify/cmd/proxify
GO111MODULE=on go get -v -u github.com/projectdiscovery/mapcidr/cmd/mapcidr
GO111MODULE=on go get -v -u github.com/projectdiscovery/notify/cmd/notify
GO111MODULE=on go get -v -u github.com/projectdiscovery/chaos-client/cmd/chaos
GO111MODULE=on go get -v -u github.com/projectdiscovery/shuffledns/cmd/shuffledns
GO111MODULE=on go get -v -u github.com/projectdiscovery/interactsh/cmd/interactsh-client

# Web recon/fuzzer stuff
go get -u -v github.com/ffuf/ffuf
go get -u -v github.com/lc/gau
go get -u -v github.com/tomnomnom/assetfinder
go get -u -v github.com/tomnomnom/waybackurls
go get -u -v github.com/iamstoxe/urlgrab
go get -u -v github.com/hakluke/hakrawler
GO111MODULE=on go get -v github.com/OWASP/Amass/v3/...


# XSS Stuff
GO111MODULE=on go get -v github.com/hahwul/dalfox/v2
