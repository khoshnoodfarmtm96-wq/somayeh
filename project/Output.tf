
output "eip_public_ip" {
  value = aws_eip.lb.public_ip
}
