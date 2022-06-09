#! /bin/bash
# sudo amazon-linux-extras install -y epel
sudo apt update -y
sudo apt install -y sshpass
# sudo useradd devops
sudo useradd -m -s /bin/bash devops
# ssh-keygen -t rsa
echo -e 'devops\ndevops' | sudo passwd devops
echo 'devops ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/devops
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo systemctl restart sshd.service
sudo apt install -y python3
sudo apt install -y vim
sudo apt install -y ansible
sudo apt install -y git
