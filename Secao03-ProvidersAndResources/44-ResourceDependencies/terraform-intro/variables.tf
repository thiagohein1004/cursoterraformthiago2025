variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.100.0.0/16"
}

variable "subnet_cidr" {
  default = "10.100.1.0/24"
}

variable "az" {
  description = "Availability Zone"
  default     = "us-east-1a"
}
