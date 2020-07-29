Trying to spin off a Ubuntu 18.04 Server using vagrant.
- This will install chef automate server using a script which was provided by chef.io
- with some small alterations made ready for my hyper-v system
 - changed fixed ip to dhcp ip
 - removed configuration which do not work on hyper-v setup

# Needed:
 - https://www.vagrantup.com/ (version 2.2.9)
 - https://docs.microsoft.com/nl-nl/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v
 - Vagrantfile (in the folder)
 - Virtual Switch - Connection Type - External Network (you can add this using your Hyper-V manager)
 	- In this example named inet-sw01-nl

 
