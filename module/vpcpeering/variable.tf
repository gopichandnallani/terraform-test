variable "peer_owner_id" {
    description = "we need to provide the AWS account id here "  
}

variable "vpc_id" {
    description = "provide the vpc id to initiate the peering connection in between"
}

variable "vpc1_id" {
    description = "provide the accepter vpc id to intiate the peering connection"
}
