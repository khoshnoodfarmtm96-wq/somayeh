module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.4.0"
    subnet_id     = "subnet-0553519ed7e3a3a71"
}