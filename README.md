# DevOps Intro
## Life before DevOps
- Devleopers and Operations Working separately 
- Waterfall Model
- Spend a long time developing only for bugs to arise during production
- Transition to Agile and SCRUM

### Why DevOps
- Communication between development and operations team
- Iterative cycles so bugs can be found and fixed as they arise
#### Key pillars of DevOps
- Ease of use
- Flexibility
- Robustness
- Cost

##### Monolith Architecture
- Presentation, application, and data composed all in one piece
- If there is a problem it all goes down
- Can be useful for small applications
- Not good for Large Applications


### Development Environment
![](images/dev-env.png)
**DevOps Introduction**
- DevOps is a culture that bridges gap between Development and Operation
- Shared development environment to reduce errors
- continuous integration / continuous delivery more efficient

# Vagrant
- Automate the setup of virtual development environments

## Create `vagrantfile` in the current location
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

## Create `provison.sh` in `app` directory
```
#!/bin/bash

# Update and upgrade packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y
```
**Change Permissions to allow execution of script**
- sudo chmod +x provision.sh

## Provisioning
- Add to end of vagrant file to run script as part of the vagrant up process
```
config.vm.provision "shell", path: "app/provision.sh"
```
## How to SSH into VM
```
vagrant ssh
```
# Check status of nginx
```
sudo systemctl status nginx
sudo systemctl start nginx
sudo systemctl stop nginx
```

## Vagrant commands:
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
