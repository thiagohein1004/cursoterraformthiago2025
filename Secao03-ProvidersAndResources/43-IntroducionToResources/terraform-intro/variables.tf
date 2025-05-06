variable "region" {
  description = "AWS region"
  default = "us-east-1" 
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  default = "t2.micro"
}

variable "bucket_name" {
  description = "Nome do Bucket"
}