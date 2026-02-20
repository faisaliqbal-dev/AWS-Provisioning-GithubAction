#Creating VPC
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.vpc_name
  }
}

#Creating Subnet
resource "aws_subnet" "main_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = var.sub_name
  }
}