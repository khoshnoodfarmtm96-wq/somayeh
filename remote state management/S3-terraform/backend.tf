terraform {
  backend "s3" {
    bucket = "terraform-dem-bucket-001"
    key    = "production.tfstate"
    region = "ap-south-1"
    
  }
}

resource "aws_iam_user" "dev" {
    name = "kplabs-user-01"
}
 resource "aws_security_group" "prod" {
  name        = "terraform-firewalls"
   }