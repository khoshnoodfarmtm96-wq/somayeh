resource "aws_security_group" "allows_tls" {
name = "var.sg_name"
description = "managed from terraform"
}