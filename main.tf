module "vpc" {
  source = "../tf-modules/tf-module-vpc"
  vpc_cidr_block = var.vpc_cidr_block
  env = var.env
}