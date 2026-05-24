
# این کد یک کاربر جدید در AWS (با نامی که عدد است) و یک سرور مجازی با مشخصات و امنیت ثابت می‌سازد.
variable "username" {
  type = number
}
resource "aws_iam_user" "lb" {
  name = var.username

}


resource "aws_instance" "p2" {
  ami                    = "ami-02b49a24cfb95941c"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0ab45efcb5607b99c"]
}
