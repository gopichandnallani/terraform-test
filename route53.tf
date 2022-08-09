resource "aws_route53_zone" "primary" {
  name = var.route53zone_name
  tags = {
    Name = var.route53zone_name
    Owner = "Terraform"
  }
}

