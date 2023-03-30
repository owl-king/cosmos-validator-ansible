# Ansible playbook for cosmos validator
This repository contains ansible module to setup a cosmos validator

# Why Ansible
Ansible is an open-source automation tool that is used for configuration management, application deployment, and orchestration.

Ansible is suit for our projects because:
- Easy to learn and use
- Agentless architecture: We do not need to install any software on our validator nodes
- Easy to manage multiple hosts with different conditions

# Folder structure
```
├── README.md
├── inventory 					# Defines hosts per environemnts. 
│   └── prod
│       └── hosts.yml				# Host connection details (IPs, keys)
├── playbook.yml				# Main entrypoint to run ansible playbook to all instances in group
├── roles					# Roles are used in the module
│   ├── common					# Common: Defines common packages are used in all nodes ( Set timezone )
│   │   └── tasks
│   │       └── main.yml
│   └── cosmos-validator			# Cosmos validator role
│       ├── files
│       │   ├── config-client-toml.sh
│       │   ├── state-sync.sh
│       │   ├── update-gas-prices.sh
│       │   └── update-peers.sh
│       ├── tasks
│       │   ├── dependencies.yml
│       │   └── main.yml
│       └── templates
│           ├── add-junod-key.sh.j2
│           ├── create-validator.sh.j2
│           └── junoval.service.j2
└── vars					# Variable per host
    ├── all.yml						
    └── gcp-node1.yml

```

# Setup

## Prerequisite
- ansible >=2.14
- ssh key to access the validator node

## Detail steps
```bash

# Step 1. Git clone iac repo
git clone [ansible-repo]

# Step 2. Update prod/hosts.yml
# Update the ssh key, host IP ( from Terraform )

# Step 3. Update vars
# In this case, I am going to setup gcp-node1 so I create gcp-node1.yml file from node-template.yml
# - Must update passphrase
# - local_junod_key_path: where to save your key seed
# - Other vars
cd vars
cp node-template.yml gcp-node1.yml

# Step 4. Run the playbook
ansible-playbook -i inventory/prod/hosts.yml playbook.yml

# Step 5. After the playbook finish, you can get your key information and mnemonic from local_junod_key_path you specify
```

# TODO
- [x] Test validator node on Juno
- [ ] Move all the hard code value to variables
- [ ] Support multiple sync methods
- [ ] Add more checks to existing resources
