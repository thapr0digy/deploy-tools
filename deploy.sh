#!/bin/bash

# We'll be assuming we're on a Debian/Ubuntu install for any apt-install commands
# Otherwise we'll build from source if possible for things like amass

TOOLS_DIR="~/tools"
echo "Installing all tools..."

# Project Discovery tools
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
nuclei -update-templates
GO111MODULE=on go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
GO111MODULE=on go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
GO111MODULE=on go install -v github.com/projectdiscovery/proxify/cmd/proxify@latest
GO111MODULE=on go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest
GO111MODULE=on go install -v github.com/projectdiscovery/notify/cmd/notify@latest
GO111MODULE=on go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
GO111MODULE=on go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
GO111MODULE=on go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest

# Web recon/fuzzer stuff
go install -v github.com/ffuf/ffuf@latest
go install -v github.com/lc/gau@latest
go install -v github.com/tomnomnom/assetfinder@latest
go install -v github.com/tomnomnom/waybackurls@latest
go install -v github.com/tomnomnom/anew@latest
go install -u github.com/iamstoxe/urlgrab@latest
go install -v github.com/hakluke/hakrawler@latest
go install -v github.com/OWASP/Amass/v3/...@latest


# XSS Stuff
GO111MODULE=on go install -v github.com/hahwul/dalfox/v2@latest
