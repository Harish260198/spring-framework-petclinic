resource "aws_instance" "db_vm_ubuntu_vm" {
  ami           = var.ami_id # aws linux image Id 
  instance_type = "t2.micro"

  tags = {
    Name = "application-instance"
  }

  key_name = "application"

  vpc_security_group_ids = [var.vpc_security_group_ids]

}
