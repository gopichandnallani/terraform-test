output "instance-ids" {
  value = aws_instance.web-1.*.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_id" {
  value = {
    for k, v in aws_subnet.public: k => v.id
  }
}

output "private_subnet_id" {
  value = {
    for i, y in aws_subnet.private: i => y.id
  }
}

output "security-groupid" {
  value = aws_security_group.allow_all.id
}

output "IGW" {
  value = aws_internet_gateway.gw.id
}
# output "user_arn" {
#     value = aws_iam_user.feature-dev.*.arn
# }

# output "route53_zone_name" {
#     value =  aws_route53_zone.primary.name
# }
# output "route53_zone_id" {
#     value = aws_route53_zone.primary.id
# }
