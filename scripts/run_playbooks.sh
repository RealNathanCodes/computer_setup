#!/bin/bash

ansible-playbook --ask-become-pass playbooks/start.yml $@
#ansible-playbook playbooks/start.yml $@