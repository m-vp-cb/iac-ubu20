provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "m-vp-cb" {
  ami           = "ami-078bc46c55d0e1238"
  instance_type = "t2.micro"
  user_data     = <<-EOF
#!/bin/bash
sudo apt-get update --yes
sudo apt-get install apache2 --yes
sudo systemctl is-active apache2
sudo systemctl is-enabled apache2
sudo systemctl status apache2
EOF

  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id = aws_subnet.default.id
}



output "DNS" {
  value = aws_instance.m-vp-cb.public_dns
}