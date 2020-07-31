provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "m-vp-cb" {
  ami           = "ami-078bc46c55d0e1238"
  instance_type = "t2.micro"
}