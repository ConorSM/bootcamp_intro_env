# DevOps Intro
## Life before DevOps
### Why DevOps
#### Key pillars of DevOps
- Ease of use
- Flexibility
- Robustness
- Cost

##### Monolith Architecture



### Development Environment

- **DevOps Introduction**
- DevOps is a culture that bridges gap between Development and Operation
-
-
- **Life before DevOps**
- Waterfall - V-Model
- Transition to Agile and SCRUM

- Create `vagrantfile` in the current location
```
Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
# creating a virtual machine ubuntu


# assign private ip to our VM
 config.vm.network "private_network", ip: "192.168.10.100"

# Ensure to install hostsupdater plugin on our localhost before rerunning the vagrant
 config.hostsupdater.aliases = ["development.local"]

end
```

```
#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y
sudo apt-get install nginx -y
```

- Vagrant commands:
```
Common commands:
     autocomplete    manages autocomplete installation on host
     box             manages boxes: installation, removal, etc.
     cloud           manages everything related to Vagrant Cloud
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     hostsupdater
     init            initializes a new Vagrant environment by creating a Vagrantfile    
     login
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
     port            displays information about guest port mappings
     powershell      connects to machine via powershell remoting
     provision       provisions the vagrant machine
     push            deploys code in this environment to a configured destination       
     rdp             connects to machine via RDP
     reload          restarts vagrant machine, loads new Vagrantfile configuration      
     resume          resume a suspended vagrant machine
     snapshot        manages snapshots: saving, restoring, etc.
     ssh             connects to machine via SSH
     ssh-config      outputs OpenSSH valid configuration to connect to the machine      
     status          outputs status of the vagrant machine
     suspend         suspends the machine
     up              starts and provisions the vagrant environment
     upload          upload to machine via communicator
     validate        validates the Vagrantfile
     version         prints current and latest Vagrant version
     winrm           executes commands on a machine via WinRM
     winrm-config    outputs WinRM configuration to connect to the machine
```