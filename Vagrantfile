Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  # Prepare for vagrant package
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", type: "rsync", disabled: true

  config.vm.provision "shell", path: "bootstrap.sh"
end
