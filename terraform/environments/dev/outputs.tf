#########################################
# Amazon EKS Outputs
#########################################

output "cluster_name" {
  description = "Name of the Amazon EKS cluster."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for the Amazon EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID associated with the Amazon EKS cluster."
  value       = module.eks.cluster_security_group_id
}

output "oidc_provider_url" {
  value = module.eks.oidc_provider_url
}