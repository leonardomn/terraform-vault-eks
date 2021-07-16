output "vpc_id" {
  description = "Outputting vpc_id to be used in our EKS"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "Outputting private_subnets to be used in our EKS"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Outputting private_subnets to be used in our EKS"
  value       = module.vpc.public_subnets
}

output "securitygroup_id" {
  value = module.securitygroup.id
}