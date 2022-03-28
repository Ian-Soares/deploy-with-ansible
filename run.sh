#!/bin/bash

temporarysshvar=`cat ssh-keys/id.rsa.pub`
echo "sudo echo $temporarysshvar >> /home/vagrant/.ssh/authorized_keys" >> vagrant/Apache2Machine.sh

echo "Creating Ubuntu Virtual Machine"
cd vagrant
vagrant up
sleep 15

echo "Running Ansible Playbook"
export ANSIBLE_HOST_KEY_CHECKING=False
cd ../ansible
ansible-playbook -i inventory.ini -u vagrant main.yml

if [ $? -eq 0 ]; then
    echo "SUCCESS! Check the ip HTTP in your browser!"
else
    echo "Something went wrong, check again the README.md file to see if there is some tip of what it is missing"
fi