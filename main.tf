module "vpcmodule" {
      source = "./module/vpc"
      vpc_cidr = var.vpc_cidr
      vpc_name = var.vpc_name
      IGW_name = var.IGW_name
      routing_table_public_name = var.routing_table_public_name
}
