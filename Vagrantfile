Vagrant.configure("2") do |config|

	#config.vm.box = "centos/7"
		
	config.vm.provision "ansible" do |ansible|

		config.vm.define "manager" do |manager|
			manager.vm.hostname = "manager"
			manager.vm.network "private_network", ip: "192.168.10.100", virtualbox_intnet: "intnet"
			manager.vm.network "forwarded_port", guest: 9000, host: 9000
			manager.vm.box = "centos/7"
		end
		config.vm.define "worker1" do |worker1|
			worker1.vm.hostname = "worker1"
			worker1.vm.network "private_network", ip: "192.168.10.101", virtualbox_intnet: "intnet"
			worker1.vm.box = "centos/7"
		end
    		ansible.playbook = "playbook.yml"
  	end
end

