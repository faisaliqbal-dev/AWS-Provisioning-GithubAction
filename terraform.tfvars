# ec2 instance
instance_type   = "t2.micro"
ami             = "ami-0ba8d27d35e9915fb"
security_groups = "sg-0676e13965795fc09"
instance_name   = "Practice-VM"
#security_group_id = "sg-0676e13965795fc09"
#count = 1

# Security Group
name        = "web-server"
description = "Security group for web-server with HTTP ports open within VPC"

# Vpc values
vpc_cidr          = "10.0.0.0/16"
vpc_name          = "my-vpc"
sub_name          = "my-sub"
instance_tenancy  = "default"
sub_cidr          = "10.0.1.0/24"
availability_zone = "ap-southeast-2a"