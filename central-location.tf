variable "vpn_ip" {
  type        = string
  default     = "200.20.30.50/32"
  description = "this is a vpn server create in aws"
}

variable "app_port" {
  type    = number
  default = 8080
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "ftp_port" {
  type    = number
  default = 21
}
