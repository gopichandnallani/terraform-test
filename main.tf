module "vpc" {
      source = "./module/vpc"
      vpc_cidr = var.vpc_cidr
      vpc_name = var.vpc_name
      IGW_name = var.IGW_name
      routing_table_public_name = var.routing_table_public_name
}

module "securitygroup" {
      source = "./module/securitygroup"
      sg_name = var.sg_name
      vpcid = module.vpc.vpc_id
}

module "ec2" {
      source = "./module/ec2"
      count = 1
      key_name = var.key_name
      securitygroupid = module.securitygroup.securitygroup_id
      subnetid = module.vpc.public_subnet_id[count.index]
}