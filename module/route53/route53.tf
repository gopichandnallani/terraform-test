resource "aws_route53_zone" "primary" {
  name = var.route53zone_name
  tags = {
    Name = var.route53zone_name
    Owner = "Terraform"
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.${var.route53zone_name}"
  type    = "A"
  ttl     = 300
  records = var.instance_publicip
}