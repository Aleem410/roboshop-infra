env = "dev"

#default vpc information
default_vpc_cidr_block = "172.31.0.0/16"
default_vpc_id = "vpc-00a494e89f26a41c5"
default_route_table = "rtb-0d05b7dbef66fa0c7"

#vpc
vpc = {
  dev = {
    vpc_cidr_block           = "10.0.0.0/16"
    public_subnet_cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
    app_subnet_cidr_block    = ["10.0.2.0/24", "10.0.3.0/24"]
    db_subnet_cidr_block     = ["10.0.4.0/24", "10.0.5.0/24"]
    subnet_azs               = ["us-east-1a", "us-east-1b"]
  }
}


