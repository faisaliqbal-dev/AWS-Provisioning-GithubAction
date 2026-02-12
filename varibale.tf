# ec2 variables
variable "ami" {
  type = string

}
variable "security_groups" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "instance_name" {
  type = string
}
variable "instance_count" {
  type    = number
  default = 1
}

# vpc variables
variable "vpc_cidr" {
  type = string

}
variable "sub_cidr" {
  type = string

}
variable "instance_tenancy" {
  default = "default"
  type    = string

}
variable "vpc_name" {
  type = string

}
variable "sub_name" {
  type = string

}
variable "availability_zone" {
  type = string

}
variable "security_group_id" {
  type = string
}
variable "name" {
  type = string

}
variable "description" {
  type = string

}