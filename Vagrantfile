Vagrant.configure('2') do |config|
  config.vm.box = 'dummy'

  config.vm.provider :aws do |aws, override|
    aws.keypair_name = 'themisto'
    aws.region = 'eu-central-1'
    aws.instance_type = 't2.micro'
    aws.security_groups = ['vagrant']
    aws.ami = 'ami-f9e30f96' # Ubuntu 16.04, EU (Frankfurt), hvm:instance-store

    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = '~/.ssh/id_rsa'
  end

  config.vm.provision 'chef_client' do |chef|
    chef.node_name = 'dev-web'
    chef.chef_server_url = 'https://api.chef.io/organizations/simplare'
    chef.validation_key_path = '.chef/simplare-validator.pem'
    chef.validation_client_name = 'simplare-validator'
    # chef.add_role 'web'
    # chef.environment = 'development'
    chef.delete_node = true
    chef.delete_client = true
  end
end
