vagrant
=======

Vagrant configurations for VM and VM Cluster configurations.

Vagrant is used to automate the provisioning of hosts via "VirtualBox" or "VMware Fusion".  To start, you need to built a base VM.  The references I used are below, but save yourself some time and headache by downloading the VirtualBox base machine I've created from Dropbox. Link below.

Once you've retrieved the prepared VagrantBox, add it to your vagrant box list with:

`vagrant box add CentOS_64_x64 <box-location>`

# Vagrant Plugin's Used

- vagrant-hostmanager (1.2.3)
- (optional) vagrant-vmware-fusion (2.0.8)
- vagrant-librarian-chef (0.1.4)

# Get the Boxes and keys

Save yourself some time and download the preconfigured VagrantBox for VirtualBox.  The box 'CentOS_64_x64.20131022.virtualbox.box' includes a vagrant user with the keys in the 'keys' folder.  Copy the 'keys/vagrant' file (the ssh private rsa key) to you ~/.ssh directory.  The Vagrantfile's created in the vagrant projects below will override the default ssh keys expected by vagrant and use this one.

[Dropbox](https://www.dropbox.com/sh/eamvf0ilsu8y68k/9w1fY-AmcR)

# Observations / tips

1. If you want to use VMware Fusion as your 'default' provider, add `VAGRANT_DEFAULT_PROVIDER=vmware_fusion` to your environment.  But beware, if you also use 'VirtualBox' you'll have to specifically supply the `--provider` flag for most commands, to overcome the default set by the environment variable.

# Creating a base CentOS 6.4 Base VM
<table>
<tr><th>
Provider
</th><th>
References
</th><th>
Notes
</th></tr>
<tr><td>
Both
</td><td>
(http://cbednarski.com/articles/creating-vagrant-base-box-for-centos-62/)
</td><td>
Really great start, but has a few errors in it. IE: odf should be ovf for the Virtual Box Installations
</td></tr>
<tr><td>
vmware_fusion
</td><td>
(http://vmtrooper.com/vagrant-static-external-ip-addresses-with-the-vmware-fusion-provider/)
</td><td>
I have not been able to create a VM Fusion Box that works yet.
</td></tr>
<tr><td>
Both
</td><td>
(https://gist.github.com/bkuberek/5266195)
</td><td>
When you finally get your box working, these steps will be necessary the allow the vagrant hostmanager plugin.  This guide was for SUSE, but is relevant, partly, for RHEL/CentOS.  Line 12+ are good for RHEL/CentOS.
</td></tr>
<tr><td>
Both
</td><td>
none
</td><td>
I've created an SSH key pair that I use with my base VM's, instead of the keys that are "WELL" known for vagrant.  Use the vagrant SSH configuration settings describe here to make this transparent: (http://docs.vagrantup.com/v2/vagrantfile/ssh_settings.html)
</td></tr>
<tr><td>

</td><td>

</td><td>

</td></tr>
<tr><td>

</td><td>

</td><td>

</td></tr>
</table>

