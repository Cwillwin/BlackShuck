#!/bin/bash
echo 'Installing dependencies...'
sudo apt install nmap whatweb gobuster jq curl
pip install sublist3r
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
pip install sqlmap
sudo apt install nikto
nuclei -update-templates

