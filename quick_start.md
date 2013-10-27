# Quick Start

Built on a Mac (just saying), should work on other platforms, but you'll have to amend these directions in some areas.

* Install [VirtualBox](https://www.virtualbox.org) - Free
* Install [Vagrant](http://www.vagrantup.com) - Free
* Install Vagrant Plugins
	- `vagrant plugin install vagrant-hostmanager`
	- `vagrant plugin install vagrant-librarian-chef`
* Download Prepared [Vagrant-Ready VirtualBox](https://www.dropbox.com/sh/eamvf0ilsu8y68k/9w1fY-AmcR). 
* Add Box to Vagrant Repository
	- `vagrant box add "CentOS_64_x64" <location_of_the_local_box_file> --provider virtualbox`
* Get the private vagrant key used for the above box and add it to your `~/.ssh` directory.  Leave it named `vagrant`, that's what the rest of the configurations are expecting.
* Install 'git'.
* Clone this repo.
	- `git clone https://github.com/dstreev/vagrant.git`
* Go to the [Cluster NON-Local Buildout](hdp_cluster_buildout) directory.
* Launch Vagrant Provisioning Process and watch your cluster get built.
	- `vagrant up`
* Goto the [Ambari Console on the master server](http://tmstr.hortonworks.vagrant:8080)
* Install your cluster using the following hosts:
	- `tmstr.hwx.test`
	- `td1.hwx.test`
	- `td2.hwx.test`
* Points during cluster installation:
	- Reset the Replication Factor to 1 or 2, since there will only be 2 datanodes.
	- The `mstr` server is configured with more memory to support all the master services, so put them all there.