# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

# Ubuntu 16.04 LTS
  config.vm.hostname = "bitbar"
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 50000, host: 50000
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=755", "fmode=755"]
  # not exactly works on my Arch linux so meh
  # :nfs => { :mount_options => ["dmode=755", "fmode=755"] } 

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "2"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.vault_password_file = "provisioning/pass"
    ansible.playbook = "provisioning/play.yml"
  end

end