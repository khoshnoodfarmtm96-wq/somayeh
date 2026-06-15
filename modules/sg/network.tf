resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_traffic"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


output "sg_id" {
  value = aws_security_group.allow_ssh.id
}
