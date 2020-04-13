#!/bin/bash

VAR_DIRECTORY="playbooks/vars/"
VAR_FILE="user_variables.yml"
VAR_FILENAME="${VAR_DIRECTORY}${VAR_FILE}"

if [ -s "$VAR_FILENAME" ]; then
	echo "${VAR_FILENAME} already exists, skipping setting variables"
	exit 0
fi

if [[ ! -d "$VAR_DIRECTORY" ]]; then
	mkdir $VAR_DIRECTORY
fi

read -p 'Git Name: ' git_name
read -p 'Git Email: ' git_email
read -p 'Github Username: ' github_username
read -p 'Github API Token: ' github_token

echo '---' > "$VAR_FILENAME"
[[ ! -z "$git_name" ]] && echo "git_name: $git_name" >> "$VAR_FILENAME"
[[ ! -z "$git_email" ]] && echo "git_email: $git_email" >> "$VAR_FILENAME"
[[ ! -z "$github_username" ]] && echo "github_username: $github_username" >> "$VAR_FILENAME"
[[ ! -z "$github_token" ]] && echo "github_token: $github_token" >> "$VAR_FILENAME"

exit 0