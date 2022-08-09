resource "aws_vpc_peering_connection" "main" {
    peer_owner_id = var.peer_owner_id
    peer_vpc_id   = var.vpc_id
    vpc_id        = var.vpc1_id
    auto_accept   = true

    tags = {
    Name = "Test-peering"
    Owner = "Terraform"
  }
}