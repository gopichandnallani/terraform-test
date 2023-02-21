module "vpc" {
  source                    = "./module/vpc"
  vpc_cidr                  = var.vpc_cidr
  vpc_name                  = var.vpc_name
  IGW_name                  = var.IGW_name
  routing_table_public_name = var.routing_table_public_name
}

# module "vpc1" {
#       source = "./module/vpc"
#       vpc_cidr = "192.168.0.0/16"
#       vpc_name = "test-peer vpc "
#       IGW_name = "Peer-Igw"
#       routing_table_public_name = "peer-public-RT"
#       public_cidrs = ["192.168.1.0/24", "192.168.2.0/24"]
# }

# module "vpc_peering" {
#       source = "./module/vpcpeering"
#       peer_owner_id = var.peer_owner_id
#       vpc_id = module.vpc.vpc_id
#       vpc1_id = module.vpc1.vpc_id
# }

module "securitygroup" {
  source  = "./module/securitygroup"
  sg_name = var.sg_name
  vpcid   = module.vpc.vpc_id
}

# module "ec2" {
#       source = "./module/ec2"
#       count = 1
#       key_name = var.key_name
#       securitygroupid = module.securitygroup.securitygroup_id
#       subnetid = module.vpc.public_subnet_id[count.index]
# }

# module "route53" {
#       source = "./module/route53"
#       route53zone_name = var.route53_zone_name
# }