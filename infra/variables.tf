variable "aws_region" {
  default = "us-east-1"
}

variable "ubuntu_ami" {
  default = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS en us-east-1
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "MySecurePassword123" # cámbialo si gustas
}
