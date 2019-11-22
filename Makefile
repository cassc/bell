run:
	ansible-playbook bell-ansible.yml
sync:
	ansible-playbook  bell-ansible.yml  --tags sync
build-remote: sync
	ansible-playbook  bell-ansible.yml  --tags build
restart-remote-fe:
	ansible-playbook  bell-ansible.yml  --tags "fe"
