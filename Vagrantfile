Vagrant::Config.run do |config|

  config.vm.box = "lucid64"

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  # config.vm.network "33.33.33.10"

  # With problems with SSH connect try this http://stackoverflow.com/questions/4681070/vagrant-ssh-fails-with-virtualbox 
  # config.vm.boot_mode = :gui

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.forward_port "http", 8080, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.
  #
  config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "cookbooks"
	 chef.add_recipe("vagrant_main") 
  end

  config.vm.provision :shell, :path => "php-jenkins.sh"

end
