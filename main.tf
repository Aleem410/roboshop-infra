module "vpc" {
  source                     = "github.com/Aleem410/tf-module-vpc"
  env                        = var.env
  default_vpc_cidr_block     = var.default_vpc_cidr_block
  default_vpc_id             = var.default_vpc_id
  default_route_table        = var.default_route_table

  for_each                   = var.vpc
  vpc_cidr_block             = each.value.vpc_cidr_block
  public_subnet_cidr_block   = each.value.public_subnet_cidr_block
  private_subnet_cidr_block  = each.value.private_subnet_cidr_block
  subnet_azs                 = each.value.subnet_azs
}

