# docker-ansible
Docker container to run ansible (for example on Atomic hosts)

Build
```
git clone git@github.com:wouterhummelink/docker-ansible.git
docker build docker-ansible -t ansible
```

Run
```
sudo docker run -v /tmp/playbook-kubeadm:/playbook -v /tmp/id_ecdsa:/home/ansible/.ssh/id_ecdsa ansible
```

