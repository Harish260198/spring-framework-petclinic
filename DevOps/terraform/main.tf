locals {
  Image_ID = "ami-03f4878755434977f"
  VPC_SGI  = "sg-036640becb6f89a64"
}

module "aws_instanse_mysql_petclinic" {
  source                 = "./aws_instance/mysql"
  ami_id                 = local.Image_ID
  vpc_security_group_ids = local.VPC_SGI
}

module "aws_instanse_application_petclinic" {
  source                 = "./aws_instance/application"
  ami_id                 = local.Image_ID
  vpc_security_group_ids = local.VPC_SGI

depends_on = [ module.aws_instanse_mysql_petclinic ]

}

