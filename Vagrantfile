# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "hashicorp/precise32"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end 

    master1.vm.provision "shell", path: "scripts/common.sh"
 
    # set master machine
    config.vm.define 'master1' do |master1|
        master1.vm.box = config.vm.box
        master1.vm.provision "shell", path: "scripts/master.sh"
        master1.vm.network "private_network", ip: "10.0.0.11"
        #config.vm.network "public_network"
    end
    
    # set minions machines
    config.vm.define 'minion1' do |minion1|
        minion1.vm.box = config.vm.box
        #minion1.vm.provision "shell", path: "scripts/minion.sh"
        minion1.vm.network "private_network", ip: "10.0.0.12"
        #config.vm.network "public_network"
    end
  
    config.vm.define 'minion2' do |minion2|
        minion2.vm.box = config.vm.box
        #minion2.vm.provision "shell", path: "scripts/minion.sh"
        minion2.vm.network "private_network", ip: "10.0.0.13"
        #config.vm.network "public_network"
    end
    
    config.vm.define 'minion3' do |minion3|
        minion3.vm.box = config.vm.box
        #minion3.vm.provision "shell", path: "scripts/minion.sh"
        minion3.vm.network "private_network", ip: "10.0.0.14"
        #config.vm.network "public_network"
    end
end
