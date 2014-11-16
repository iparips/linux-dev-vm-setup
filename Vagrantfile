VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "rjkernick/linuxMint17Xfce"

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = 2048
    v.cpus = 1
    v.name = "Linux Mint 17 XFCE"
    v.customize ["modifyvm", :id, "--vram", "256"]
  end

  config.vm.provision "file", source: "./workstation-setup/shell/.prompt", destination: "/home/vagrant/.prompt"
  config.vm.provision "file", source: "./workstation-setup/shell/.bashrc", destination: "/home/vagrant/.bashrc"
  config.vm.provision "shell", path: "./provision-scripts/main.sh"

end
