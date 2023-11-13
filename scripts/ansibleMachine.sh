#!/bin/bash
sudo add-apt-repository --yes --update ppa:ansible/ansible # get latest repository from ansible
sudo apt install --yes ansible # install ansible
sudo cp /vagrant/files/ansible.cfg /etc/ansible/ansible.cfg;
sudo cp /vagrant/inventory/hosts /etc/ansible/hosts;
sudo ssh-keygen -b 2048 -t rsa -f /tmp/sshkeyAnsibleController -q -N "";

