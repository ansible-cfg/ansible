#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
#ansible-playbook /etc/ansible/playbooks/install_base_OS-scw.yaml
ansible-playbook /etc/ansible/playbooks/install_sensu-client-scw.yaml
exit 