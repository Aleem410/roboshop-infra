module "vpc" {
  source = "github.com/Aleem410/tf-module-vpc"
  vpc_cidr_block = var.vpc_cidr_block
  env = var.env
}