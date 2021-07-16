module "vpc" {
  source = "./network"

  env_name        = var.env_name
  project_name    = var.project_name
  vpc_id          = module.vpc.vpc_id
  cidr            = lookup(var.network, "cidr")
  private_subnets = lookup(var.network, "private_subnets")
  public_subnets  = lookup(var.network, "public_subnets")
}