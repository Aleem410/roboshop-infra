module "vpc" {
  source = "github.com/Aleem410/tf-module-vpc"
  vpc_cidr_block = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  subnet_azs  =  var.subnet_azs
  env = var.env
  default_vpc_cidr_block = var.default_vpc_cidr_block
  default_vpc_id = var.default_vpc_id
  default_route_table = var.default_route_table
}

