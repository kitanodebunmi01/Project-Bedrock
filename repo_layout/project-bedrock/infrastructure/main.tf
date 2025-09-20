module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "bedrock-cluster"
  cluster_version = "1.29"
  subnets         = ["subnet-xxxx", "subnet-yyyy"]
  vpc_id          = "vpc-xxxx"

  manage_aws_auth = true

  eks_managed_node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }
}
