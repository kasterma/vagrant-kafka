# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "vkbase"
  config.ssh.private_key_path = "base-box/id_rsa_vagrant"

  config.vm.define "zook1" do |zook1|
    zook1.vm.network :private_network, ip: "10.10.10.10"
    zook1.vm.hostname = "zook1"
    zook1.vm.network :forwarded_port, guest: 22, host: 2290    # ssh port
    zook1.vm.network :forwarded_port, guest: 2181, host: 2181  # zookeeper default port
  end

  config.vm.define "kafka1" do |kafka1|
    kafka1.vm.network :private_network, ip: "10.10.10.20"
    kafka1.vm.hostname = "kafka1.kasterma-local.net"
    kafka1.vm.provision :file, source: "server1.properties", destination: "server.properties"
    kafka1.vm.provision :shell, :path => "kafka-install-script.sh"
    kafka1.vm.network :forwarded_port, guest: 22, host: 2291    # ssh port
    kafka1.vm.network :forwarded_port, guest: 9092, host: 9092 # kafka server
  end

  config.vm.define "kafka2" do |kafka2|
    kafka2.vm.network :private_network, ip: "10.10.10.30"
    kafka2.vm.hostname = "kafka2.kasterma-local.net"
    kafka2.vm.provision :file, source: "server2.properties", destination: "server.properties"
    kafka2.vm.provision :shell, :path => "kafka-install-script-2.sh"
    kafka2.vm.network :forwarded_port, guest: 22, host: 2292    # ssh port
    kafka2.vm.network :forwarded_port, guest: 9093, host: 9093 # kafka server
  end

  config.vm.define "kafka3" do |kafka3|
    kafka3.vm.network :private_network, ip: "10.10.10.40"
    kafka3.vm.hostname = "kafka3.kasterma-local.net"
    kafka3.vm.provision :file, source: "server3.properties", destination: "server.properties"
    kafka3.vm.provision :shell, :path => "kafka-install-script-3.sh"
    kafka3.vm.network :forwarded_port, guest: 22, host: 2293    # ssh port
    kafka3.vm.network :forwarded_port, guest: 9094, host: 9094 # kafka server
  end

  config.vm.define "general" do |general|
    general.vm.network :private_network, ip: "10.10.10.50"
    general.vm.hostname = "general.kasterma-local.net"
    general.vm.network :forwarded_port, guest: 22, host: 2294    # ssh port
    general.vm.provision :shell, :path => "jmxtrans-install.sh"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "hosts"
    ansible.playbook = "zookeeper-playbook.yml"
  end

end
