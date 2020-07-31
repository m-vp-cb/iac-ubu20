Trying to spin off a Ubuntu 20.04 Server using terraform.
- This will install an Ubuntu server on a EC2 instance 
- Install a web server using basic launch script
- open ports to connect to webserver

# Needed:
- Tasks done in terraform ubuntu 20.04 ec2 clean


# Spinning off server:
## Initialize project:
```
terraform init
```
## Run an instance on ec2
```
terraform apply
```
It will ask confirmation. Type in yes
```
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:
```
After confirmation 
This will go quite fast, though to access the webserver takes some time.
The installation of the web server will take place when the server is initialized.

```
Apply complete! Resources: 6 added, 0 changed, 0 destroyed.

Outputs:

DNS = ec2-35-159-9-30.eu-central-1.compute.amazonaws.com

```

## Destroy instance ec2
```
terraform destroy
```
```
It will ask confirmation. Type in yes
Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value:
```
After confirmation
Distruction will go quite fast.
```
aws_route.internet_access: Destroying... [id=r-rtb-0e026f18fe83325871080289494]
aws_instance.m-vp-cb: Destroying... [id=i-002f38097fc977e1d]
aws_route.internet_access: Destruction complete after 0s
aws_internet_gateway.default: Destroying... [id=igw-04019c1439c25888b]
aws_instance.m-vp-cb: Still destroying... [id=i-002f38097fc977e1d, 10s elapsed]
aws_internet_gateway.default: Still destroying... [id=igw-04019c1439c25888b, 10s elapsed]
aws_internet_gateway.default: Destruction complete after 18s
aws_instance.m-vp-cb: Still destroying... [id=i-002f38097fc977e1d, 20s elapsed]
aws_instance.m-vp-cb: Destruction complete after 30s
aws_subnet.default: Destroying... [id=subnet-06252aa19028de15d]
aws_security_group.web: Destroying... [id=sg-07cd674f0165a43bf]
aws_security_group.web: Destruction complete after 0s
aws_subnet.default: Destruction complete after 0s
aws_vpc.main: Destroying... [id=vpc-02e1dd783c96216c5]
aws_vpc.main: Destruction complete after 1s

Destroy complete! Resources: 6 destroyed.
```

 
#Lessons learned
 - Make sure the ami is correct https://cloud-images.ubuntu.com/locator/ec2/