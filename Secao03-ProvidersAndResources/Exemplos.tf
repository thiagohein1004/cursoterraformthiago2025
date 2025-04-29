//EXEMPLO BUCKET S3
//Provider = podemos ver que é na AWS, mas pode ser em vários outros, segue link:
//https://registry.terraform.io/browse/providers
//Resource: o recurso a ser criado, sempre colocando o resource "recurso" "nomeinterno"
//PRÁTICAS OBRIGATÓRIAS PARA PROVIDERS?
//Sempre colocar região e o features
//Se necessário, configure múltiplos providers usando alias


provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "meu_bucket" {
  bucket = "mundonuvem-teste-bucket"
  acl    = "private"
}

//EXEMPLO RESOURCE GROUP AZURE

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "meu_grupo" {
  name     = "rg-mundonuvem"
  location = "East US"
}

//EXEMPLO CRIAÇÃO DE UMA EC2

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "meu_servidor" {
  ami           = "ami-0c55b159cbfafe1f0" # Exemplo: Amazon Linux
  instance_type = "t2.micro"

  tags = {
    Name = "Servidor MundoNuvem"
  }
}

