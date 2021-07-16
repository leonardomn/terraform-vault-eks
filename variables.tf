variable "env_name" {
  description = "Environment name to make this deployment unique"
  type        = string
}

variable "project_name" {
  description = "Project name to name all resources"
  type        = string
}

variable "region" {
  description = "Region selected to create all resources"
  type        = string
}

variable "network" {
  description = "Network Configuration"
  type        = any
}