provider "aws" {
  region = var.region
}

resource "aws_instance" "myinstancetest" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type

  tags = {
    Name = "InstanciaTerraform"
  }
}

resource "aws_s3_bucket" "meu_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Projeto = "CursoTerraform"
  }
}