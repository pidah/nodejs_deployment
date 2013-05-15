Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu_aws"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root"
  config.vm.provider :aws do |aws, override|
    aws.keypair_name = "web"
    override.ssh.private_key_path = "~/.ssh/web.pem"
    aws.instance_type = "t1.micro"
    aws.security_groups = "web"
    aws.ami = "ami-c5afc2ac"
    override.ssh.username = "ubuntu"
    aws.tags = {
      'Name' => 'Nodejs App',
     }
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "init.pp"
    puppet.options = ["--fileserverconfig=/vagrant/puppet/fileserver.conf"]
  end
end
