module "eks" {
  source         = "./kubernetes"
  env_name       = var.env_name
  project_name   = var.project_name
  vpc_id         = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
  worker_groups  = var.worker_groups
}