
resource "aws_instance" "myec2" {
  ami           = "ami-02b49a24cfb95941c"
  instance_type = "t3.micro"
  count         = 4
  tags = {

    Name = "payments-system-${count.index}"
  }
}


variable "users" {
  type    = list(string)
  default = ["ali", "alice", "babbi", "mari"]
}

resource "aws_iam_user" "iam_users" {
  count = length(var.users) # بهتر است به جای گذاشتن (عدد4)، از طول لیست استفاده کنید
  name  = var.users[count.index]
}
