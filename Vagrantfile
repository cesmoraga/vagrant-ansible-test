$script = <<-SCRIPT
yum install -y ansible
ansible-playbook /vagrant/playbook.yml -v
SCRIPT

Vagrant.configure("2") do |config|

	config.vm.synced_folder ".", "/vagrant", type: "rsync"		
	config.vm.provision "shell", inline: $script 

		config.vm.define "manager" do |manager|
			manager.vm.hostname = "manager"
			manager.vm.network "private_network", ip: "192.168.10.100", virtualbox_intnet: "intnet"
			manager.vm.network "forwarded_port", guest: 9000, host: 9000
			manager.vm.network "forwarded_port", guest: 8500, host: 8500
			manager.vm.box = "centos/7"
		end
        (1..3).each do |i|
		config.vm.define "worker#{i}" do |worker|
			worker.vm.hostname = "worker#{i}"
			worker.vm.network "private_network", ip: "192.168.10.10#{i}", virtualbox_intnet: "intnet"
			worker.vm.box = "centos/7"
		end
	end
	
end

