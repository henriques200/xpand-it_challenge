#!/bin/bash
sudo yum update -y
sudo yum install -y epel-release yum-utils
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker && sudo systemctl enable docker

