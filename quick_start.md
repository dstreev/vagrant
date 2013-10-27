# Quick Start

Built on a Mac (just saying), should work on other platforms, but you'll have to amend these directions in some areas.

1. Install [VirtualBox](https://www.virtualbox.org) - Free
2. Install [Vagrant](http://www.vagrantup.com) - Free
3. Install Vagrant Plugins
	a. `vagrant plugin install vagrant-hostmanager`
	b. `vagrant plugin install vagrant-librarian-chef`
4. Download Prepared [Vagrant-Ready VirtualBox](https://www.dropbox.com/sh/eamvf0ilsu8y68k/9w1fY-AmcR). 
5. Add Box to Vagrant Repository
	a. `vagrant box add "CentOS_64_x64" <location_of_the_local_box_file> --provider virtualbox`
6. Get the private vagrant key used for the above box and add it to your `~/.ssh` directory.  Leave it named `vagrant`, that's what the rest of the configurations are expecting.
7. Install 'git'.
8. Clone this repo.
	a. `git clone https://github.com/dstreev/vagrant.git`
9. Go to the [Cluster NON-Local Buildout](hdp_cluster_buildout) directory.
10. Launch Vagrant Provisioning Process and watch your cluster get built.
	a. `vagrant up`
11. Goto the [Ambari Console on the master server](http://tmstr.hortonworks.vagrant:8080)
12. Install your cluster using the following hosts:
```
tmstr.hwx.test
td1.hwx.test
td2.hwx.test
```
13. Points during cluster installation:
	a. Reset the Replication Factor to 1 or 2, since there will only be 2 datanodes.
	b. The `mstr` server is configured with more memory to support all the master services, so put them all there.