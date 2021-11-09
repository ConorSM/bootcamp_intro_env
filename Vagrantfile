Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64"
# creating a virtual machine ubuntu


# assign private ip to our VM
 config.vm.network "private_network", ip: "192.168.10.100"

# Ensure to install hostsupdater plugin on our localhost before rerunning the vagrant
 config.hostsupdater.aliases = ["development.local"]

# Sync folder from OS to VM
		# "." means current location - into/inside our VM - 
 config.vm.synced_folder ".", "/home/vagrant/app"

 config.vm.provision "shell", path: "app/provision.sh"
end
