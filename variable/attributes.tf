resource "aws_instance" "lb" {
  ami           = "ami-022d03f649d12a49d"
  instance_type = "t3.micro"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}