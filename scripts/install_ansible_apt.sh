echo "Info:    Installing Ansible using APT"
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
echo "Info:    Finished installing Ansible using APT"

<<'COMMENT'

command -v ansible-playbook > /dev/null
if [ $? -eq 1 ]; then
	echo "Info:     Ansible not detected."
    echo "Info:     Installing Ansible."
    sudo apt-get install ansible -y
fi

ansible_ppa="ppa.launchpad.net/ansible/ansible"
if ! grep -q "^deb .*$ansible_ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*
then
	echo "Info:     The ansible ppa does not appear to be installed."
	echo "Info:     Upgrading to the latest stable ansible..."
	ansible-playbook --ask-become-pass playbooks/install_ansible.yml
else
	echo "Info:     The ansible ppa already appears to be installed. Skipping ansible upgrade..."
fi
COMMENT