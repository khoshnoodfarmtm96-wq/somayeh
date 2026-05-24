
# این کد با استفاده از مقادیر دو متغیر ورودی، یک سرور مجازی (EC2) در سرویس ابری AWS می‌سازد.
resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instancetype
}
