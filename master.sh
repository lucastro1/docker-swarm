#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh

sudo mkdir /images
cd /images
sudo mkdir mariadb
sudo cp /vagrant/dockerfile /images/mariadb
cd /images/mariadb
sudo docker image build  -t mariadb:1.0 .