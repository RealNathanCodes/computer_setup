For Linux machines use ansible, which you can start just by running `./run.sh`
For Windows machines Look in the chocolatey directory





I've not had a chance to test the apt branches yet, I've only tested this on Manjaro so far

# Things I want to get working
* Install docker (make sure to set it to start at startup (or do I want that only on servers?)) (this may require adding my user to a newly created docker group)
* Install docker compose


# Ansible Server bootstrapper

All of the machines and virtual machines in my infrastructure should be controlled from this the machine that this ansible bootstrapper is run on. 

All of the applicable playbooks will all be in this repo.





# Development Machine Setup



My dotfiles re-implemented using Ansible.

## Supported Operating Systems
* Ubuntu

Really it's just Ubuntu for now since that's the only machine I care about for
my local development setup. If you're feeling super inspired and want to submit
a PR to support other operating systems, I wouldn't say no. Just refer to the
contributing section below.

Installation
------------

To install, just clone this repository:

```
git clone https://github.com/coderjoe/dev-environment.git ~/dev-environment
```

Usage
-----

To run the ansible playbook use the provided bash script:

```
cd ~/dev-environment
./run.sh
```

If necessary this script will bootstrap the system with ansible from the official
ansible packge source and prompt for a series of user variables used by the
playbook.

"Advanced" Usage
----------------

If you'd like to run with options, the run.sh script passes options to ansible-playbook:

```
# This will run the playbook using roles with the development tag
./run.sh -t development
```

Contributing
------------

If you'd like to contribute, I appreciate it! I'll happily consider any pull
requests provided, but please consider the following things first...

1. Ultimately this repo is designed to assist me in setting up my own personal
   development machine. I likely won't accept changes which would install packages
	 or configuration I'm unlikely to use.
2. I really only use Ubuntu right now. Other opreating systems aren't out of the
   question but if it makes maintenance too difficult for my primary use case
	 it'll be a tough sell.
3. Support for windows is highly unlikely at least until ansible can be run from
   a native windows host.
4. I'm much more likely to accept a PR that has been vetted by a submitted issue
   first, or from a fork that is actively in use.

License
-------

This repo is available under an [MIT License](https://github.com/coderjoe/dev-environment).