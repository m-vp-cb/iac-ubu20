Trying to spin off a Ubuntu 20.04 Server using vagrant.
# Needed:
 - https://www.vagrantup.com/ (version 2.2.9)
 - https://docs.microsoft.com/nl-nl/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v
 - Vagrantfile (in the folder)

 
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


# Errors during spinning off:

```
==> default: Importing a Hyper-V instance
    default: Creating and registering the VM...
An error occurred while executing a PowerShell script. This error
is shown below. Please read the error message and see if this is
a configuration error with your system. If it is not, then please
report a bug.

Script: import_vm.ps1
Error:

Bij Hyper-V is een fout opgetreden bij het openen van een object op computer xxxxx. Het object is niet gevonden. Het object is mogelijk verwijderd. Controleer of de Virtual Machine Management-service actief is op de computer.
```
This was caused by: hyper-v service was stopped

```
Vagrant failed to initialize at a very early stage:

The plugins failed to initialize correctly. This may be due to manual
modifications made within the Vagrant home directory. Vagrant can
attempt to automatically correct this issue by running:

  vagrant plugin repair

If Vagrant was recently updated, this error may be due to incompatible
versions of dependencies. To fix this problem please remove and re-install
all plugins. Vagrant can attempt to do this automatically by running:

  vagrant plugin expunge --reinstall

Or you may want to try updating the installed plugins to their latest
versions:

  vagrant plugin update

Error message given during initialization: Unable to resolve dependency: user requested 'vagrant-hostmanager (= 1.8.9)'
```

This was caused by: a previous version of Vagrant was installed. Running the vagrant plugin expunge --reinstall did the trick

