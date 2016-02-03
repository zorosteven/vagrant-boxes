# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
VAGRANTFILE_API_VERSION = "2"
VAGRANT_WORKSPACE_BASE = "workspace"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    #ubuntu
    config.vm.define "ubuntu", primary: true do |v|
        v.vm.box = "zs/ubuntu"
        v.vm.box_url = ["file://ubuntu-14.04-server-amd64.box"]
        v.vm.boot_timeout = 120
        v.vm.hostname = "docker-ubuntu.zs.com"

        v.ssh.username = "vagrant"
        v.ssh.password = "vagrant"

        v.vm.synced_folder ".", "/vagrant", disabled:true
        v.vm.synced_folder VAGRANT_WORKSPACE_BASE, "/home/vagrant/workspace", create:true

        v.vm.network :private_network, ip:"192.168.56.60"

        v.vm.provider :virtualbox do |vb|
            vb.name = "zs-ubuntu"
            vb.cpus = 2
            vb.memory = 2048
        end
    end


    #centos
    config.vm.define "centos" do |v|
        v.vm.box = "zs/centos"
        v.vm.box_url = ["file://centos-7.0-x86_64.box"]
        v.vm.boot_timeout = 120

        v.ssh.username = "vagrant"
        v.ssh.password = "vagrant"

        v.vm.synced_folder ".", "/vagrant", disabled: true
        v.vm.synced_folder VAGRANT_WORKSPACE_BASE, "/home/vagrant/workspace", create:true

        v.vm.network :private_network, ip:"192.168.56.80"

        v.vm.provider :virtualbox do |vb|
            vb.name = "zs-centos"
            vb.cpus = 2
            vb.memory = 2048
        end
    end

end
