#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
:> /root/.ssh/known_hosts
read -p 'Enter the new minion ip adress  : ' ip_minion
echo -e "[scw_newinstances]\n$ip_minion " > /etc/ansible/inventory/hosts 
ansible-playbook /etc/ansible/playbooks/testing-rancher.yaml
exit