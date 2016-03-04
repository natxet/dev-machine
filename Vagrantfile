# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"

  config.vm.network "private_network", ip: "192.168.33.100"
  
  config.vm.hostname = "safevey.dev"  
  
  config.vm.synced_folder "../shared/", "/shared", create: true
  config.vm.synced_folder "../shared/api.safevey.org", "/shared/api.safevey.org", create: true
  config.vm.synced_folder "../shared/safevey.org", "/shared/safevey.org", create: true
  
  config.vm.provider "virtualbox" do |vb|
	
	  vb.name	= "safevey.dev"
	  vb.memory	= "2048"
	  vb.cpus 	= 2
	  
  end
		
  config.vm.provision :shell do |shell|
    shell.path = "scripts/downloadPuppetModules.sh"
  end
end
