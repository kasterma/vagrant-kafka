# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "base"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.hostname = "kafka1"
  config.vm.provision :shell, :path => "zk-install-script.sh"
  config.vm.provision :shell, :path => "kafka-install-script.sh"



  config.vm.network :forwarded_port, guest: 2181, host: 2181  # zookeeper
  config.vm.network :forwarded_port, guest: 9092, host: 9092  # kafka server
end
