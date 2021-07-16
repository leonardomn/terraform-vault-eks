module "securitygroup" {
  source = "./sg"

  name   = format("%s-%s-eks-ingress", var.project_name, var.env_name)
  vpc_id = var.vpc_id
  ingress = {
    rule1 = {
      from_port   = 0
      to_port     = 0
      protocol    = "tcp"
      cidr_blocks = var.cidr
    }
  }
}