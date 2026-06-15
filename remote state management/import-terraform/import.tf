provider "aws" {
  region = "ap-south-1" 
}

import {
  to = aws_security_group.mysg
  id = "sg-0ab45efcb5607b99c"
}