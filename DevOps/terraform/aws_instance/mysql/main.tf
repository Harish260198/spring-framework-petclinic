resource "aws_instance" "db_vm_ubuntu_vm" {
  ami           = var.ami_id # aws linux image Id 
  instance_type = "t2.micro"

  tags = {
    Name = "mysql-instance"
  }

  key_name = "db_mysql"

  vpc_security_group_ids = [var.vpc_security_group_ids]

}
