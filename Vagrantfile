# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Enabled vagrant-omnibus plugin
  config.omnibus.chef_version = :latest
  config.vm.box = "ubuntu/trusty64"
  # Use the block below to setup virtualbox memory and cpu settings for ALL vagrant nodes.
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id,
                  "--memory", 512,
                  "--rtcuseutc", "on",
                  "--cpus", 1,
                  "--cpuexecutioncap", 100]
  end


  config.vm.define :node1 do |node1|
    node1.vm.hostname = "node1"
    node1.vm.network :private_network, ip: "192.168.56.11"

    node1.vm.provision :chef_solo do |chef|
      chef.formatter = "doc"
      chef.log_level = "info"
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.data_bags_path = "data_bags"
      chef.environments_path = "environments"    # By default this is empty, so you have to specify a path
      chef.node_name = "node1"                   # By default this is empty, however some cookbooks need it
      chef.run_list = %w[role[linux-base] role[gatling]]    # Specify as a lit like this: %w[ role[role1] role[role2] ]
    end
  end
end
