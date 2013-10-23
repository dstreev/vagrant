vagrant
=======

Vagrant configurations for VM and VM Cluster configurations

# Vagrant Plugin's Used

vagrant-hostmanager (1.2.3)
vagrant-vmware-fusion (2.0.8)
vagrant-librarian-chef (0.1.4)

# Get the Boxes and keys

[Dropbox](https://www.dropbox.com/sh/eamvf0ilsu8y68k/9w1fY-AmcR)

# Creating a base CentOS 6.4 Base VM

| Provider | References | Notes |
| Both | (http://cbednarski.com/articles/creating-vagrant-base-box-for-centos-62/) | Really great start, but has a few errors in it. IE: odf should be ovf for the Virtual Box Installations |
| vmware_fusion | (http://vmtrooper.com/vagrant-static-external-ip-addresses-with-the-vmware-fusion-provider/) | I have not been able to create a VM Fusion Box that works yet. |
| Both | (https://gist.github.com/bkuberek/5266195) | When you finally get your box working, these steps will be necessary the allow the vagrant hostmanager plugin.  This guide was for SUSE, but is relevant, partly, for RHEL/CentOS.  Line 12+ are good for RHEL/CentOS. |
| Both | none | I've created an SSH key pair that I use with my base VM's, instead of the keys that are "WELL" known for vagrant.  Use the vagrant SSH configuration settings describe here to make this transparent: (http://docs.vagrantup.com/v2/vagrantfile/ssh_settings.html) |

