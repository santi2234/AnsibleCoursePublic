# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"
# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

#export VAGRANT_DEFAULT_PROVIDER="virtualBox"
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

  # INDIEN MACHINE NIET OPSTART MET JUISTE PROVIDER, DOE ONDERSTAAND COMMANDO IN CMDER
  # vagrant up <machineName> --provider <providername>

  config.vm.define "ansibleMachine" do |ansibleMachine|
    ansibleMachine.vm.box = "bento/ubuntu-20.04"
   # config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
    ansibleMachine.vm.network "private_network", ip: "192.168.50.4"
    ansibleMachine.vm.provision "shell", path: "scripts/ansibleMachine.sh"
    ansibleMachine.vm.provider "virtualbox" do |v|
      v.name = "ansibleMachine"
      config.vm.box = "bento/ubuntu-20.04"
    end
  end
    
    config.vm.define "web" do |web|
      web.vm.box = "centos/8"
      web.vm.network "private_network", ip: "192.168.50.20"
      web.vm.provider "virtualbox" do |v|
        v.name = "web"
        config.vm.box = "bento/ubuntu-20.04"
    end
  end


  config.vm.define "ansibleControlVmware" do |ans|
    ans.vm.box = "bento/ubuntu-20.04"

    ans.vm.provider "vmware" do |v|
     v.name = "ansibleControlVmware"
   end   

  
  


   #hosts.each do |host|
   # config.vm.define host['name'] do |node|
   #   node.vm.box = host['box'] ||= DEFAULT_BASE_BOX
   #   node.vm.box_url = host['box_url'] if host.key? 'box_url'

#      node.vm.hostname = host['name']
 #     node.vm.network :private_network, network_options(host)
  #    custom_synced_folders(node.vm, host)

#      node.vm.provider :virtualbox do |vb|
        # WARNING: if the name of the current directory is the same as the
        # host name, this will fail.
 #       vb.customize ['modifyvm', :id, '--groups', PROJECT_NAME]
  #    end
   # end
 # end


end
 #s config.vm.env.VAGRANT_DEFAULT_PROVIDER="VirtualBox"


  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
