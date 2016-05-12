#!/bin/bash
ansible-playbook /etc/ansible/playbooks/init_user-ovh.yaml
ansible-playbook /etc/ansible/playbooks/setup_postinstall-ovh.yaml
exit 
