provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "devops-morning-tf-instance1" {
  ami                    = "ami-0e86e20dae9224db8"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "ec2-keypair-urgen"
  vpc_security_group_ids = ["sg-0ab6201c201331adb"]
  tags = {
    Name    = "devops_instance_terraform"
    Project = "DevOps"
  }
}

