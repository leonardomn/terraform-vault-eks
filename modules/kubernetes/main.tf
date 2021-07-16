data "aws_eks_cluster" "eks" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "eks" {
  name = module.eks.cluster_id
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = format("%s-%s-eks", var.project_name, var.env_name)
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnets         = var.public_subnets

  workers_group_defaults = {
    root_volume_type = "gp2"
  }

  worker_groups = var.worker_groups
}