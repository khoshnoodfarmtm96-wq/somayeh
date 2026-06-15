module "ec2_team_b" {
  source        = "../../modules/ec2"
  ami           = "ami-0123456789abcdef"
  instance_type = "t3.medium"
}

module "sg_team_b" {
  source = "../../modules/sg"
}
