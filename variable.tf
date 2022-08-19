variable "vpc_name" {}
variable "IGW_name" {}
variable "routing_table_public_name" {}
variable "vpc_cidr" {
     description = "CIDR block for the VPC"
     default = "10.1.0.0/16"
}
variable "sg_name" {}
variable "key_name" {
     description = "provide the key paie name to use to create the instance with"  
}
variable "peer_owner_id" {
     description = "provide the aws account id "  
}

variable "route53_zone_name" {
     description = "provide the name for the route53 zone "
     default = "trainings.gopinallani.xyz"
}