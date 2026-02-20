#Creating ec2 instance
module "ec2_instance" {
  source = "./module/ec2"

  instance_name = var.instance_name

  instance_type     = var.instance_type
  ami               = var.ami
  security_group_id = module.web_server_sg.security_group_id
  subnet_id         = module.vpc.subnet_id
  count             = 1
}

#Creating Security Group
module "web_server_sg" {
  source = "./module/sec-grp"

  name                = var.name
  description         = var.description
  vpc_id              = module.vpc.vpc_id
  vpc_cidr            = module.vpc.vpc_cidr
  ingress_cidr_blocks = ["10.10.0.0/16"]
}


#Creating vpc and subnet in it
module "vpc" {
  source = "./module/vpc"

  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  sub_name          = var.sub_name
  sub_cidr          = var.sub_cidr
  availability_zone = var.availability_zone
  instance_tenancy  = var.instance_tenancy

}