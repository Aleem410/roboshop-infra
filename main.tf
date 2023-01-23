module "vpc" {
  source = "github.com/Aleem410/tf-module-vpc"
  vpc_cidr_block = var.vpc_cidr_block
  public_cidr_block = var.public_cidr_block
  env = var.env
}

module "subnets" {
  source = "github.com/Aleem410/tf-module-vpc"
  public_cidr_block = var.public_cidr_block
  vpc_cidr_block = var.vpc_cidr_block
  env = var.env
}
