resource "aws_instance" "practice-vm" {
  ami      = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids =  [var.security_groups]
  tags = {
    Name = var.instance_name
  }
}