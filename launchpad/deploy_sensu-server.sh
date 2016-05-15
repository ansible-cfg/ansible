#!/bin/bash

# This script installs a "sensu-server" as seen as the backend of the sensu monitoring framework 
# It deploys : 
# -> Prerequisites 
# 	-Redis as in Memory Datastore
# 	-RabbitMQ as broker 
# -> The sensu-server daemon : 
# -> The sensu-client to monitor itself. 
# NOTA : 
# -> The API and Dashboarding with uchiwa are the frontend of the sensu monitoring framework installed on another server
# Architecture : 
# A "sensu-server" for each "datacenter". Datacenter are for example : AWS (Amazon), GCP (Google), OVH, SCW (Scaleway), DGO (Digital Ocean).. 
# Thus, Dashboarding through the API will be able to access the whole elastic, hybrid & distributed cloud.minsys.io


cd /home/ansible/ansible.cloud.minsys.io.git/
svn update
cp -R /home/ansible/ansible.cloud.minsys.io.git/trunk/* /etc/ansible/
#ansible-playbook /etc/ansible/playbooks/init_user-ovh.yaml
#ansible-playbook /etc/ansible/playbooks/setup_postinstall-ovh.yaml
exit 