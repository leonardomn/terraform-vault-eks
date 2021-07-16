variable "env_name" {
  description = "Environment name to make this deployment unique"
  type        = string
}

variable "project_name" {
  description = "Project name to name all resources"
  type        = string
}

variable "vpc_id" {
  description = "Variable containing the vpc_id"
  type        = string
}

variable "cidr" {
  description = "Variable to specify the network range for this vpc"
  type        = string
}

variable "private_subnets" {
  description = "Variable containing the list of subnets"
  type        = list(any)
}

variable "public_subnets" {
  description = "Variable containing the list of subnets"
  type        = list(any)
}

variable "enable_nat_gateway" {
  description = "Variable to turn on or off the nat gateway"
  default     = true
  type        = bool
}

variable "single_nat_gateway" {
  description = "Variable to turn on or off the single nat gateway"
  default     = true
  type        = bool
}

variable "enable_dns_hostnames" {
  description = "Variable to turn on or off the dns hostnames"
  default     = true
  type        = bool
}
