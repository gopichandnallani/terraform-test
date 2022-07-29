variable "vpc_cidr" {
     description = "CIDR block for the VPC"
     default = "10.1.0.0/16"
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
