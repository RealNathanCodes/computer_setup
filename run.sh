#!/bin/bash

./scripts/install_ansible.sh
if [ $? -ne 0 ]; then
	echo "Error:    An error occurred while bootstrapping or upgrading ansible!"
	echo "Error:    Please resolve the errors and try again."
	exit 1;
fi

echo "Info:     Loading user variables..."
./scripts/set_user_variables.sh

if [ $? -ne 0 ]; then
	echo "Error:    An error occurred while setting user variables."
	echo "Error:    Please run ./scripts/set_user_variables.sh and resovle all errors."
	exit 1
fi

echo "Running playbook..."
./scripts/run_playbooks.sh $@