#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
ansible-playbook /etc/ansible/playbooks/init_user-ovh.yaml
ansible-playbook /etc/ansible/playbooks/setup_postinstall-ovh.yaml
exit 
