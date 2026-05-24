resource "aws_instance" "p1" {
  ami           = "ami-022d03f649d12a49d"
  instance_type = "t3.micro"
}

resource "aws_instance" "p2" {
  ami           = "ami-022d03f649d12a49d"
  instance_type = "t3.micro"
}