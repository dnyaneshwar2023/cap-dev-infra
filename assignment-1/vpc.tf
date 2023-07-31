module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "cap-dev-vpc"
  cidr = "10.0.0.0/23"

  azs                = ["us-east-2a", "us-east-2b", "us-east-2c"]
  public_subnets     = ["10.0.0.0/25", "10.0.0.128/26", "10.0.0.192/26"]
  private_subnets    = ["10.0.1.0/26", "10.0.1.64/26", "10.0.1.128/26"]
  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.default_tags
}

