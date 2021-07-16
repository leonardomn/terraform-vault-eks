variable "name" {
  description = "Security group name"
  type        = string
}

variable "vpc_id" {
  description = "Variable containing the vpc_id"
  type        = string
}

variable "ingress" {
  description = "Ingress rules"
}