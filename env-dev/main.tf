module "main" {
  source        = "../modules"
  env_name      = var.env_name
  project_name  = var.project_name
  network       = var.network
  worker_groups = local.worker_groups
}