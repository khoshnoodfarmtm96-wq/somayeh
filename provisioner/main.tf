provider "aws" {
  region = "ap-south-1"
}

# پیدا کردن خودکار جدیدترین نسخه Amazon Linux
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_security_group" "sg_final_luck" {
  name        = "sg_ayoub_victory_final_test"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  # اینجا دیگه آی‌دی دستی وارد نکردیم، خود ترافرم پیداش می‌کنه
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_final_luck.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<html><body style='background:#2ecc71; text-align:center; color:white; padding-top:100px;'><h1>VICTORY!</h1><p>Ayoub, it is working!</p></body></html>" > /var/www/html/index.html
              EOF

  tags = { Name = "Ayoub-Auto-Server" }
}

output "final_url" {
  value = "http://${aws_instance.web.public_ip}"
}