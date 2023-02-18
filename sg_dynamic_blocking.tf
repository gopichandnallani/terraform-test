locals {
  ingress = var.ingress
  egress  = var.egress
}

resource "aws_security_group" "sg_dynamic_blocking" {
  name        = "sg_dynamic_blocking"
  description = "sg_dynamic_blocking"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = local.ingress
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = local.egress
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}