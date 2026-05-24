variable "tags" {
  type = map(any)
  default = {
    team = "security-team"
    
  }

}
locals {
  default = {
    team = "security-team"
  }
}
resource "aws_security_group" "sg_01" {
  name = "app_firewaall"
  tags = local.default
}
resource "aws_security_group" "sg_02" {
  name = "db_firewall"
  tags = local.default

}
