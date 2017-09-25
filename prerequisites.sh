#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo apt-get install -y openssh-server
sudo systemctl enable ssh.socket
SSH_DIR=${HOME}/.ssh
mkdir ${SSH_DIR}
chmod 700 ${SSH_DIR}
KEYS=${SSH_DIR}/authorized_keys
cat id_rsa.pub_ANDRECLEVO > ${KEYS}
chmod 600 ${KEYS}
