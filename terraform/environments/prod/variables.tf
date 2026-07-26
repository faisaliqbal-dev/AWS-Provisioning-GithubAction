#########################################
# AWS Configuration
#########################################

variable "aws_region" {
  description = "AWS region where resources will be deployed."

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
  description = "CIDR blocks for public subnets."

  type = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."

  type = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the VPC."

  type = list(string)
}

variable "pub_name" {
  description = "Public subnet name."

  type = string
}

variable "pvt_name" {
  description = "Private subnet name."

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
  description = "Kubernetes version for the Amazon EKS cluster."

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
  description = "Name tag for EKS worker nodes."

  type = string
}

variable "tags" {
  description = "Common tags applied to all AWS resources."

  type = map(string)

  default = {}
}

#########################################
# Legacy EC2 Variables
# Remove after confirming they are unused.
#########################################

variable "ami" {
  description = "AMI ID for standalone EC2 instances."

  type    = string
  default = ""
}

variable "instance_name" {
  description = "Standalone EC2 instance name."

  type    = string
  default = ""
}

variable "instance_count" {
  description = "Number of standalone EC2 instances."

  type    = number
  default = 1
}

variable "sub_cidr" {
  description = "Legacy subnet CIDR."

  type    = string
  default = ""
}