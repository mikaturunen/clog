#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
# Install ansible into the management node
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# Copy ansible dir here to make sure it's as it should
cp -r ../../ansible /vagrant/ansible/

# By modifying this file you can tell the master to point to a specific location and set of computes to contor
cat >> /etc/hosts <<EOL

# Master
10.0.15.30  master

# Nodes
10.0.15.41  node1
10.0.15.42  node2

EOL
