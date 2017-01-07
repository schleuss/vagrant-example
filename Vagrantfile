Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
    v.cpus = 2
  end
  config.vm.define "webserver" do |webserver|
    webserver.vm.box = "ubuntu/trusty64"
    webserver.vm.network "private_network", ip: "192.168.56.2"
    webserver.vm.hostname = "webserver"
    webserver.vm.provision "shell", path: "ansible.sh"
    webserver.vm.provision "shell", privileged: false, path: "app.sh"
    webserver.vm.provision :ansible_local do |ansible|
      ansible.playbook       = "site.yml"
      ansible.verbose        = true
      ansible.install        = false
      ansible.limit          = "all" # or only "nodes" group, etc.
      ansible.inventory_path = "inventory"
    end
  end
end
