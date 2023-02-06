env = "dev"

#default vpc information
default_vpc_cidr_block = "172.31.0.0/16"
default_vpc_id = "vpc-00a494e89f26a41c5"
default_route_table = "rtb-0d05b7dbef66fa0c7"
workstation_ip     =  "172.31.9.226/32"

#KMS information
kms_key_id = "arn:aws:kms:us-east-1:827190588206:key/1d5395b0-d414-4c8d-a78f-751b030018a5"

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

docdb = {
  dev = {
      engine  = "docdb"
      backup_retention_period = 1
      preferred_backup_window = "07:00-09:00"
      skip_final_snapshot = true
      storage_encrypted   = true
      instance_count      = 1
      instance_class      = "db.t3.medium"

  }
}


