vpc_cidr                  = "10.1.0.0/16"
vpc_name                  = "Terraform-test"
IGW_name                  = "Terrafrom-test"
routing_table_public_name = "public-main-RT"
key_name                  = "prodkey"
sg_name                   = "allow_all_keyname"
ingress                   = [80, 443, 22, 3389, 3306, 1433, 5000, 5001, 5002]
egress                    = [80, 443, 8443, 8080]