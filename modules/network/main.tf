data "aws_availability_zones" "vpc" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.66.0"

  name                 = format("%s-%s-vpc", var.project_name, var.env_name)
  cidr                 = var.cidr
  azs                  = data.aws_availability_zones.vpc.names
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames
}
