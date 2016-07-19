#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
:> /root/.ssh/known_hosts
ansible-playbook /etc/ansible/playbooks/install_base_OS-scw.yaml
ansible-playbook /etc/ansible/playbooks/install_sensu-client-scw.yaml
ansible-playbook /etc/ansible/playbooks/install_docker-scw.yaml
exit 