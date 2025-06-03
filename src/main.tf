module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = var.aws_vpc_name
  cidr            = var.aws_vpc_cidr
  azs             = var.aws_vpc_azs
  public_subnets  = var.aws_vpc_public_subnets
  private_subnets = var.aws_vpc_private_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.aws_project_tags
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = var.aws_eks_name
  cluster_version = var.aws_eks_version

  enable_cluster_creator_admin_permissions = true

  subnet_ids = module.vpc.private_subnets
  vpc_id     = module.vpc.vpc_id

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 2

      instance_type = var.aws_eks_managed_node_groups_instance_type
    }
  }

  tags = var.aws_project_tags

}