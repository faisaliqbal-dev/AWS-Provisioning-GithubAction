module "ec2_instance" {
  source = "./ec2"

  instance_name = "Linux-Vm"

  instance_type   = "t3.micro"
  ami             = "ami-0ba8d27d35e9915fb"
  security_groups = "sg-0676e13965795fc09"
}