#########################################
# VPC
#########################################

module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones

  dest_cidr   = var.dest_cidr
  environment = var.environment
}

#########################################
# IAM
#########################################

module "iam" {
  source = "../../modules/iam"

  cluster_name = var.cluster_name
  environment  = var.environment
}

#########################################
# Security Group
#########################################

module "eks_security_group" {
  source = "../../modules/sec-grp"

  name        = var.name
  description = var.description

  vpc_id      = module.vpc.vpc_id
  vpc_cidr    = module.vpc.vpc_cidr

  environment = var.environment
}

#########################################
# Amazon EKS
#########################################

module "eks" {
  source = "../../modules/eks"

  cluster_name     = var.cluster_name
  cluster_version  = var.cluster_version
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn

  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnet_ids
  cluster_sg_id   = module.eks_security_group.security_group_id
  node_group_name = var.node_group_name

  instance_types = var.instance_types

  desired_size = var.desired_size
  min_size     = var.min_size
  max_size     = var.max_size

  node_name   = var.node_name
  name        = var.name
  environment = var.environment
 # tags        = var.tags
}