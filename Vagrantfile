Vagrant.configure("2") do |config|

	config.vm.box = "centos/7"
	#config.vm.provision :shell, :path => "bootstrap.sh"


  #
  # Run Ansible from the Vagrant Host
  #
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end

end

