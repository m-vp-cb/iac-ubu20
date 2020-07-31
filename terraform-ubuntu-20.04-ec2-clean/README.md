Trying to spin off a Ubuntu 20.04 Server using terraform.
- This will install an Ubuntu server on a EC2 instance 

# Needed:
 - Terraform CLI (https://www.terraform.io/downloads.html)
 - AWS CLI
 - AWS Account (free)
 - A key to be able to spin off a machine on EC2 https://console.aws.amazon.com/iam/home?#/security_credentials (section Access Keys -> create new access key)
 - Configure key and prefered server area by command line: 
 ```
C:\Users\*********\.aws>aws configure
AWS Access Key ID [None]: *** generated access key ID ***
AWS Secret Access Key [None]: *** generated Secret access key ***
Default region name [None]: eu-central-1
Default output format [None]:
 ```
 - Terraform files


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
```
aws_instance.m-vp-cb: Creating...
aws_instance.m-vp-cb: Still creating... [10s elapsed]
aws_instance.m-vp-cb: Still creating... [20s elapsed]
aws_instance.m-vp-cb: Creation complete after 22s [id=i-0b54a90ad4b182491]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
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
```
aws_instance.m-vp-cb: Destroying... [id=i-0b54a90ad4b182491]
aws_instance.m-vp-cb: Still destroying... [id=i-0b54a90ad4b182491, 10s elapsed]
aws_instance.m-vp-cb: Still destroying... [id=i-0b54a90ad4b182491, 20s elapsed]
aws_instance.m-vp-cb: Destruction complete after 29s

Destroy complete! Resources: 1 destroyed.
```

 
#Lessons learned
 - Make sure the ami is correct https://cloud-images.ubuntu.com/locator/ec2/