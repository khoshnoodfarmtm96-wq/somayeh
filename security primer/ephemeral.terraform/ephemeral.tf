# ۱. تعریف پلاگین آمازون برای ترافرم
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# ۲. تعیین دیتاسنتر (مثلاً هند/بمبئی)
provider "aws" {
  region = "ap-south-1"
}


resource "random_password" "db_password" {
  length           = 16
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

# ۴. ساخت خود دیتابیس PostgreSQL
resource "aws_db_instance" "example" {
  instance_class       = "db.t3.micro"
  allocated_storage    = 5
  engine               = "postgres"
  username             = "example"
  skip_final_snapshot  = true
  publicly_accessible  = true
  
 
  password             = random_password.db_password.result
}