# -*- mode: ruby -*-
# vi: set ft=ruby :

# Andreas Mosti, 01.04.14

Vagrant::Config.run do |config|
  config.vm.box = "muscldbVM"

  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.provision :shell, :path => "freshInstall.bash"
  config.vm.forward_port 80, 8080
  config.vm.forward_port 443, 8443 

end
