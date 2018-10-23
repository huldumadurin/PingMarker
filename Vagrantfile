Vagrant.configure('2') do |config|

  config.vm.define "DOPingMarker" do |config|
        config.vm.provider :digital_ocean do |provider, override|
        override.ssh.private_key_path = '~/.ssh/id_rsa'
	    override.vm.box = 'digital_ocean'
        override.vm.box_url = "https://github.com/devopsgroup-io/vagrant-digitalocean/raw/master/box/digital_ocean.box"
	    override.nfs.functional = false
	    override.vm.allowed_synced_folder_types = :rsync
	    provider.ssh_key_name = ENV['DOTOKENNAME']
        provider.token = ENV['DOTOKEN']
        provider.image = 'ubuntu-16-04-x64'
        provider.region = ENV['DOREGION'] || 'nyc1'
        provider.size = '1gb'
      end
  end
end

