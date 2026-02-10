module "ec2_instance" {
  source = "./ec2"

  instance_name = "Linux-Vm"

  instance_type   = var.instance_type
  ami             = var.ami
  security_groups = var.security_groups
  count = var.instance_count
}