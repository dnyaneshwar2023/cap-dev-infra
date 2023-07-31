module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "cap-dev-vpc"
  cidr = "10.0.0.0/16"

  azs                = ["us-east-2a", "us-east-2b", "us-east-2c"]
  public_subnets     = ["10.0.0.0/26", "10.0.0.64/26", "10.0.0.128/26"]
  private_subnets    = ["10.0.1.0/26", "10.0.2.0/26", "10.0.3.0/26"]
  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.default_tags
}

