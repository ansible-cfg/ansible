#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
:> /root/.ssh/known_hosts
read -p 'Enter the new minion ip adress  : ' ip_minion
echo -e "[scw_minion_base]\n$ip_minion\n[scw_minion_base:vars]\nhost_key_checking = False\nansible_ssh_user= root\nansible_ssh_private_key_file= /root/.ssh/scw-root_rsa " > /etc/ansible/inventory/hosts 
ansible-playbook /etc/ansible/playbooks/minions/scw/deploy_minion_base.yaml
exit