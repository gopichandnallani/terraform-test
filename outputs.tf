output "vpc_id" {
  value = { for k, v in module.vpc : k => v
  }
}
