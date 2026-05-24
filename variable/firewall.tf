resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall-v2" # نام را به v2 یا هر چیز دیگری تغییر دهید
  description = "managed from terraform"
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # یعنی تمام ترافیک خروجی باز باشد
}
