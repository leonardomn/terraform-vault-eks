variable "env_name" {
  description = "Environment name to make this deployment unique"
  type        = string
}

variable "project_name" {
  description = "Project name to name all resources"
  type        = string
}

variable "cluster_version" {
  description = "EKS cluster version"
  default     = "1.20"
  type        = string
}

variable "vpc_id" {
  description = "Variable containing the vpc_id"
  type        = string
}

variable "public_subnets" {
  description = "Variable containing the list of subnets"
  type        = list(any)
}

variable "worker_groups" {
  description = "Worker groups configuration"
  type        = list(any)
}