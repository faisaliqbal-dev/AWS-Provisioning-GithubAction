#########################################
# AWS Configuration
#########################################

variable "aws_region" {
  description = "AWS region where resources will be created."

  type    = string
  default = "ap-south-2"
}

variable "environment" {
  description = "Deployment environment."

  type = string

  validation {
    condition     = contains(["dev", "qa", "stage", "prod"], var.environment)
    error_message = "Environment must be one of: dev, qa, stage, or prod."
  }
}

#########################################
# VPC Configuration
#########################################

variable "vpc_name" {
  description = "Name of the VPC."

  type = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."

  type = string
}

variable "instance_tenancy" {
  description = "Instance tenancy for the VPC."

  type    = string
  default = "default"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks."

  type = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks."

  type = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the subnets."

  type = list(string)
}

variable "pub_name" {
  description = "Name prefix for public subnets."

  type = string
}

variable "pvt_name" {
  description = "Name prefix for private subnets."

  type = string
}

variable "route_table_1" {
  description = "Public route table name."

  type = string
}

variable "route_table_2" {
  description = "Private route table name."

  type = string
}

variable "igw_name" {
  description = "Internet Gateway name."

  type = string
}

variable "dest_cidr" {
  description = "Destination CIDR block."

  type = string
}

#########################################
# Security Group
#########################################

variable "name" {
  description = "Security group name."

  type = string
}

variable "description" {
  description = "Security group description."

  type = string
}

#########################################
# Amazon EKS
#########################################

variable "cluster_name" {
  description = "Amazon EKS cluster name."

  type = string
}

variable "cluster_version" {
  description = "Amazon EKS Kubernetes version."

  type = string
}

variable "node_group_name" {
  description = "Amazon EKS managed node group name."

  type = string
}

variable "instance_types" {
  description = "EC2 instance types for worker nodes."

  type = list(string)
}

variable "desired_size" {
  description = "Desired number of worker nodes."

  type = number
}

variable "min_size" {
  description = "Minimum number of worker nodes."

  type = number
}

variable "max_size" {
  description = "Maximum number of worker nodes."

  type = number
}

variable "node_name" {
  description = "Name tag for worker nodes."

  type = string
}

#variable "tags" {
# description = "Tags applied to AWS resources."

#type = string

#default = {}
#}

#########################################
# Legacy Variables (Remove if Unused)
#########################################

variable "ami" {
  description = "AMI ID for EC2 instances (unused in EKS deployment)."

  type    = string
  default = ""
}

variable "instance_name" {
  description = "EC2 instance name (unused in EKS deployment)."

  type    = string
  default = ""
}

variable "instance_count" {
  description = "Number of EC2 instances (unused in EKS deployment)."

  type    = number
  default = 1
}

variable "sub_cidr" {
  description = "Subnet CIDR (unused)."

  type    = string
  default = ""
}

