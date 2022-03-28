# Welcome to my Ansible study repository
In this project, I automated a React.js website deploy inside a Ubuntu Vagrant Box using Ansible

# About the project
The React.js code is from a friend of mine, he is still updating it with some changes, the link of his GitHub repo is: https://github.com/Lucca-GB/NetflixClone.git

## To-do:
- [x] Create Vagrant box automatically with Vagrantfile
- [x] Automated Git clone 
- [x] Automatically build React.js code
- [x] Automatically deploy it in Apache2
- [ ] Automate git pull's from source repository

Example images of it running
---
![Ansible-Playbook](https://user-images.githubusercontent.com/80067490/160331241-93f93649-760e-43a1-9c47-3d2a6b21753a.png)

---
![Site-Deployed](https://user-images.githubusercontent.com/80067490/160331107-b19a5d3a-e66d-4ddd-bbad-6a8d2a0b3e67.png)

---

# How to test it:
> Before the next steps, make sure you have Vagrant, Ansible and git installed and working in your machine. Also you need to be using a linux operating system and make the necessary changes in "Additional information"

```
git clone https://www.github.com/ian-soares/deploy-with-ansible app
cd app
chmod +x run.sh
./run.sh
```

# Additional information
- In the ssh-keys folder, you need to change the id.rsa file to match with your ssh key;
- It is **very important** that you check your bridge network interface and change it in Vagrantfile, where mine was enp2s0;
- Also in Vagrantfile, define your Ubuntu Box ip matching to the bridge interface range (mine was 192.168.15.0/24, then I chose .205). If you notice that you need to change it, also modify the ip in ansible/inventory.ini;
- After the test, you can just run `vagrant halt` to stop the VM or `vagrant destroy` to destroy it (you need to be in vagrant directory);