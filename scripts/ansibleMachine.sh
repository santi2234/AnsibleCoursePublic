#!/bin/bash
sudo add-apt-repository --yes --update ppa:ansible/ansible # get latest repository from ansible
sudo apt install ansible # install ansible
sudo touch .ansible.conf /~;
sudo cp /vagrant/files/ansible.cfg /etc/ansible/ansible.cfg;
sudo cp /vagrant/inventory/hosts /etc/ansible/hosts;

