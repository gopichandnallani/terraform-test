variable "vpc_cidr" {
     description = "CIDR block for the VPC"
     default = "10.1.0.0/16"
}
variable "region" {
     description = "region name to deploy the infra "
     default = "us-east-1"
}
variable "vpc_name" {}
variable "IGW_name" {}
variable "public_cidrs" {
     description = "CIDR blocks for the public subnets"
     type = list
     default = ["10.1.10.0/24", "10.1.20.0/24"]
}
variable "azs" {
     description = "availiability zones for the subnets"
     type = list
     default = ["us-east-1a", "us-east-1b",]
}
variable "private_cidrs" {
     description = "CIDR block for the private subnets"
     type = list
     default = ["10.1.1.0/24", "10.1.2.0/24",]
}
variable "routing_table_public_name" {}
variable "sg_name" {
  default = "allow_all_traffic"
}
variable "key_name" {}
variable "amis" {
     description = "assigning the amis based on the region"
     default = {
          us-east-1 = "ami-08d4ac5b634553e16"
          us-east-2 = ""
     }
  
}
variable "iamusers" {
     description = "list of user names to create users "
     type = list
     default = ["Gopi", "Chand", "nallani"]  
}

variable "route53zone_name" {
     description = "provide the name for the route53 zone to create in the environment "
     default = "trainings.gopinallani.xyz"
}
