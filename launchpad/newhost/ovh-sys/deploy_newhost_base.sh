#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
:> /root/.ssh/known_hosts
read -p 'Enter the new host ip adress  : ' ip_minion
echo -e "[new_minion_ovh-sys_base]\n$ip_minion\n[new_minion_ovh-sys_base:vars]\nhost_key_checking = False\nansible_ssh_user= root\nansible_ssh_private_key_file= /root/.ssh/ovh-root_rsa " > /etc/ansible/inventory/hosts 
ansible-playbook /etc/ansible/playbooks/newhost/ovh-sys/deploy_host_base.yaml
exit