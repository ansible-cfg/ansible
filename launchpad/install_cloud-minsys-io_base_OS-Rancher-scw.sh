#!/bin/bash
cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
:> /root/.ssh/known_hosts
ansible-playbook /etc/ansible/playbooks/install_cloud-minsys-io_base_OS-RANCHER-scw.yaml
exit