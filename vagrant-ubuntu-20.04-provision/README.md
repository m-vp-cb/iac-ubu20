Trying to spin off a Ubuntu 20.04 Server using vagrant.
- Using basic provisioning to install a web server;
- Using basic vagrant settings, to reduce interaction with command line

# Needed:
 - https://www.vagrantup.com/ (version 2.2.9)
 - https://docs.microsoft.com/nl-nl/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v
 - Vagrantfile (in the folder)
 - Virtual Switch - Connection Type - External Network (you can add this using your Hyper-V manager)
 	- In this example named inet-sw01-nl

 
# Spin off 
with command 
```
vagrant up
```
login 
```
vagrant ssh
```
stop vm
```
vagrant halt
```
remove vm
```
vagrant destroy
```


# Messages during spinning off we want to get rid off:

```
==> default: Preparing SMB shared folders...
    default: You will be asked for the username and password to use for the SMB
    default: folders shortly. Please use the proper username/password of your
    default: account.
    default:
    default: Username (user[@domain]): **********
    default: Password (will be hidden): **********

Vagrant requires administrator access to create SMB shares and
may request access to complete setup of configured shares.
```
This is part of the basic sync folder /vagrant. This can be disabled in the configuration file.
config.vm.synced_folder ".", "/vagrant", disabled: true
https://www.vagrantup.com/docs/synced-folders/basic_usage

```
    default: Please choose a switch to attach to your Hyper-V instance.
    default: If none of these are appropriate, please open the Hyper-V manager
    default: to create a new virtual switch.
    default:
    default: 1) inet-sw01-nl
    default: 2) Default Switch
```
This is now automaticaly set by adding configuration in the vagrantfile which selects the correct switch 
config.vm.network "public_network", bridge: "inet-sw01-nl"
https://www.vagrantup.com/docs/networking/public_network
