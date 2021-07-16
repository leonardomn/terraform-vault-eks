module "kms" {
  source = "./kms"

  env_name     = var.env_name
  project_name = var.project_name
}