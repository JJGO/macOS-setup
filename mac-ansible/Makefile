SHELL := /bin/bash

first:
	bash scripts/bootstrap.sh
	ansible-playbook main.yml --ask-become-pass

main:
	ansible-playbook main.yml --ask-become-pass