
echo "Info:     Ensuring Ansible is installed and updated"

echo "Info:     Detecting installed ansible..."
if [ -x "$(command -v ansible-playbook)" ]; then
    echo "Info:     Ansible already installed"
else
    if [ -x "$(command -v apt)" ]; then
	    ./scripts/install_ansible_apt.sh
	elif [ -x "$(command -v pacman)" ]; then
        ./scripts/install_ansible_pacman.sh
	else
        echo "No supported method for installing Ansible"
        exit 1
	fi
fi

