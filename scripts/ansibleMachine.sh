#!/bin/bash
sudo apt-get install ansible -y;
sudo touch .ansible.conf /~;
sudo mv /vagrant/ansible.cfg /etc/ansible/ansible.cfg;

