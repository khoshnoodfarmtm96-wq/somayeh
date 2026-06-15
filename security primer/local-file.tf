variable "password" {
  description = "The password for the local file"
  type        = string
  default     = "foo!" # Wrapped in double quotes
  sensitive   = true   # Boolean value, no quotes needed
}

resource "local_file" "foo" {
  content  = var.password
  filename = "${path.module}/foo.bar"
}
