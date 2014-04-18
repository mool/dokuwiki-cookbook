# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "dokuwiki-berkshelf"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "256"]
    vb.customize ["modifyvm", :id, "--cpus", 1]
  end
  config.vm.network "private_network", ip: "10.0.111.10"
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true
  config.omnibus.chef_version = "11.6.2"

  config.vm.provision :chef_solo do |chef|
    chef.json = {
    }

    chef.run_list = [
        "recipe[apt::default]",
        "recipe[dokuwiki::default]"
    ]
  end
end
