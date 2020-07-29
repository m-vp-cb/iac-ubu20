# vagrant-ubuntu-20.04-chef-provision

TODO: Enter the cookbook description here.

Trying to spin off a Ubuntu 20.04 Server using chef workstation.
- Using chef kitchen provisioning to install a web server;

# Needed:
 - https://www.vagrantup.com/ (version 2.2.9)
 - Chef workstation 20.7.96
 - https://docs.microsoft.com/nl-nl/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v

 - Virtual Switch - Connection Type - External Network (you can add this using your Hyper-V manager)
 	- In this example named inet-sw01-nl

# Spin off 
with command 
```
kitchen setup
```
login 
```
kitchen login
```
running tests (so destroy and rebuild and test)
```
kitchen verify
```
running verification of tests
```
kitchen verify
```
remove vm
```
kitchen destroy
```



# Actions

started chef project generation 
``` 
chef generate cookbook vagrant-ubuntu-20.04-chef-provision 
```

Changed kitchen.yml
```
  - name: iac-ubu-chef
    run_list:
      - recipe[apache::httpd]
      network:
      - ["public_network", bridge: "inet-sw01-nl"]
```
and add to kitchen.yml
```
provider: hyperv
```
