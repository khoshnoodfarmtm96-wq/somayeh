variable "enviroment" {
  default = "development"

}
resource "aws_instance" "myec2" {
  ami           = "ami-022d03f649d12a49d"
  instance_type = var.enviroment == "development" ? "t3.macro" : "m5.large"

}
