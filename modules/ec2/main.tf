resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Server-from-Module"
  }
}


variable "ami" {}
variable "instance_type" {}