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
