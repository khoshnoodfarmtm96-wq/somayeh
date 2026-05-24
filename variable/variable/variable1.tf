variable "vpn_ip" {
  type    = string
  default = "200.20.30.50/32"
}

variable "app_port" {
  type = number
}

variable "ssh_port" {
  type = number
}

variable "ftp_port" {
  type = number
}

# اضافه کردن این دو مورد برای رفع Warning
variable "ami" {
  type = string
}

variable "instancetype" {
  type = string
}
