variable "region" { default = "ap-south-1" }

# ۱. استفاده از یک AMI کاملاً استاندارد دیگر
variable "ami" { default = "ami-0cc9838aa7ab1dce7" }

# ۲. تغییر تایپ اینستنس به t3.micro (که در مومبای پایدارتر است)
variable "instance_type" { default = "t3.micro" }

provider "aws" {
  region = var.region
}

module "ec2_team_a" {
  source        = "../../modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
}

module "sg_team_a" {
  source = "../../modules/sg"
}
